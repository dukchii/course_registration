package com.university.dkhp.service.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.dto.admin.AdminClassDTO;
import com.university.dkhp.dto.admin.CreateClassRequest;
import com.university.dkhp.entity.*;
import com.university.dkhp.repository.*;

/**
 * QUẢN LÝ LỚP HỌC (ADMIN)
 * - Gộp lớp
 * - Hủy lớp
 * - Đóng đăng ký
 */
@Service
public class AdminClassService {
    @Autowired private InstructorRepository instructorRepository;
    @Autowired private RoomRepository roomRepository;
    @Autowired private SemesterRepository semesterRepository;
    @Autowired private ScheduleRepository scheduleRepository;
    @Autowired private CourseRepository courseRepository;
    @Autowired private MajorCourseRepository majorCourseRepository;
    @Autowired
    private EnrollmentRepository enrollmentRepository;

    private final ClassesRepository classesRepository;

    public AdminClassService(ClassesRepository classesRepository) {
        this.classesRepository = classesRepository;
    }

    public List<AdminClassDTO> getClassesForAdmin(String filterMajorId) {
        List<AdminClassDTO> allDTOs = classesRepository.findClassesForAdmin();
        List<AdminClassDTO> result = new ArrayList<>();

        for (AdminClassDTO dto : allDTOs) {
            List<MajorCourse> mcs = majorCourseRepository.findByCourseCourseId(dto.getCourseId());

            // Kiểm tra filterMajorId có hợp lệ không (tránh lỗi null hoặc chuỗi trống)
            boolean hasFilter = filterMajorId != null && !filterMajorId.trim().isEmpty() && !"ALL".equals(filterMajorId);

            if (hasFilter) {
                // Tìm chính xác ngành được yêu cầu trong danh sách ngành của môn học
                Optional<MajorCourse> match = mcs.stream()
                    .filter(mc -> mc.getMajor().getMajorId().equalsIgnoreCase(filterMajorId))
                    .findFirst();

                if (match.isPresent()) {
                    dto.setMajorId(filterMajorId);
                    dto.setCourseMajorName(match.get().getMajor().getMajorName());
                    result.add(dto);
                }
            } else {
                
                if (!mcs.isEmpty()) {
                    String allNames = mcs.stream()
                                        .map(mc -> mc.getMajor().getMajorName())
                                        .collect(Collectors.joining(", "));
                    dto.setCourseMajorName(allNames);
                    dto.setMajorId(mcs.get(0).getMajor().getMajorId());
                } else {
                    dto.setCourseMajorName("Đại cương");
                    dto.setMajorId("DC");
                }
                result.add(dto);
            }
        }
        return result;
    }


 // =====================================================
    // 8. dành cho admin class controller
    // =====================================================

    // lấy tất cả lớp học
    public List<Classes> getAllClasses() {
        return classesRepository.findAll();
    }

    @Transactional
    public void createClass(CreateClassRequest req) {
        // 1. Khởi tạo thực thể
        Classes newClass = new Classes();
        newClass.setClassName(req.getClassName());
        newClass.setTrainingType(req.getTrainingType());
        newClass.setMaxStudents(req.getMax());
        newClass.setCurrentStudents(0);
        newClass.setStatus("OPEN");

        // 2. Tìm Course (Dùng trực tiếp course_id như DB hiện tại)
        // KHÔNG dùng MajorCourse ở đây vì DB của bạn không có cột liên kết đó
        newClass.setCourse(courseRepository.findById(req.getCourseId())
                .orElseThrow(() -> new RuntimeException("Môn học không tồn tại")));

        // 3. Tìm Giảng viên và Học kỳ
        newClass.setInstructor(instructorRepository.findById(req.getInstructorId())
                .orElseThrow(() -> new RuntimeException("Giảng viên không tồn tại")));

        newClass.setSemester(semesterRepository.findByIsActiveTrue()
                .orElseThrow(() -> new RuntimeException("Không tìm thấy học kỳ hoạt động")));

        // 4. Lưu Class để lấy ID gán cho lịch học
        Classes savedClass = classesRepository.save(newClass);

        // 5. Xử lý lịch học (Schedules) 
        List<ClassSchedule> schedules = new ArrayList<>();
        	
        // Lý thuyết
        if (req.getRawSchedules() != null && req.getRawSchedules().contains("-")) {
            ClassSchedule theory = new ClassSchedule();
            theory.setDayOfWeek(Integer.parseInt(req.getTheoryDay()));
            theory.setType("THEORY");
            theory.setGroupName("Lý thuyết");
            String[] p = req.getRawSchedules().split("-");
            theory.setStartPeriod(Integer.parseInt(p[0].trim()));
            theory.setEndPeriod(Integer.parseInt(p[1].trim()));
            if (req.getTheoryRoomId() != null && !req.getTheoryRoomId().isEmpty()) {
                theory.setRoom(roomRepository.findById(Long.parseLong(req.getTheoryRoomId())).orElse(null));
            }
            theory.setClasses(savedClass);
            schedules.add(theory);
        }

        // Thực hành
        if (req.getLabDays() != null) {
            for (int i = 0; i < req.getLabDays().size(); i++) {
                ClassSchedule lab = new ClassSchedule();
                lab.setDayOfWeek(Integer.parseInt(req.getLabDays().get(i)));
                lab.setType("PRACTICE");
                lab.setGroupName("Nhóm TH " + (i + 1));
                String[] lp = req.getLabPeriods().get(i).split("-");
                lab.setStartPeriod(Integer.parseInt(lp[0].trim()));
                lab.setEndPeriod(Integer.parseInt(lp[1].trim()));
                if (req.getLabRoomIds().get(i) != null && !req.getLabRoomIds().get(i).isEmpty()) {
                    lab.setRoom(roomRepository.findById(Long.parseLong(req.getLabRoomIds().get(i))).orElse(null));
                }
                lab.setClasses(savedClass);
                schedules.add(lab);
            }
        }

        scheduleRepository.saveAll(schedules);
    }


    public Semester getDefaultSemester() {
        // 1. Thử tìm học kỳ có trạng thái "OPEN"
        return semesterRepository.findByIsActiveTrue()
            .orElseGet(() -> {
                // 2. Nếu không có, lấy học kỳ mới nhất trong danh sách
                return semesterRepository.findAllOrderByLatest().stream()
                    .findFirst()
                    .orElseThrow(() -> new RuntimeException("Không tìm thấy học kỳ nào trong hệ thống"));
            });
    }


    @Transactional
    public void mergeClasses(Long sourceId, Long targetId) {

        Classes source = classesRepository.findById(sourceId)
                .orElseThrow(() -> new RuntimeException("Lớp nguồn không tồn tại"));

        Classes target = classesRepository.findById(targetId)
                .orElseThrow(() -> new RuntimeException("Lớp đích không tồn tại"));

        if (!source.getTrainingType().equals(target.getTrainingType())) {
            throw new RuntimeException("Không thể gộp lớp khác hệ đào tạo!");
        }

        var enrollments = enrollmentRepository.findByClassesClassId(sourceId);

        for (var e : enrollments) {
            e.setClasses(target);
        }

        enrollmentRepository.saveAll(enrollments);

        target.setCurrentStudents(
                target.getCurrentStudents() + source.getCurrentStudents()
        );

        source.setStatus("MERGED_TO_" + targetId);
        source.setCurrentStudents(0);

        classesRepository.save(target);
        classesRepository.save(source);
    }

    @Transactional
    public void cancelClass(Long classId) {

        Classes clazz = classesRepository.findById(classId)
                .orElseThrow(() -> new RuntimeException("Lớp không tồn tại"));

        clazz.setStatus("CANCELLED");

        classesRepository.save(clazz);
    }

    @Transactional
    public void closeRegistration(Long classId) {

        classesRepository.findById(classId).ifPresent(c -> {
            if ("OPEN".equalsIgnoreCase(c.getStatus())) {
                c.setStatus("CONFIRMED");
                classesRepository.save(c);
            }
        });
    }
}