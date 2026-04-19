package com.university.dkhp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.entity.ClassSchedule;
import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Semester;
import com.university.dkhp.entity.Student;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.ScheduleRepository;
import com.university.dkhp.repository.SemesterRepository;

/**
 * SERVICE QUẢN LÝ LỚP HỌC (ADMIN + SYSTEM)
 *
 * Chức năng:
 * - Tạo lớp học + lịch học
 * - Kiểm tra trùng phòng / giảng viên
 * - Kiểm tra ca học hợp lệ
 * - Tính học kỳ hiện tại của sinh viên
 * - Lọc lớp phù hợp cho sinh viên đăng ký
 */
@Service
public class ClassesService {

    @Autowired
    private ClassesRepository classesRepository;
    @Autowired
    private ScheduleRepository scheduleRepository;
    @Autowired
    private SemesterRepository semesterRepository;
    // =====================================================
    // 1. KIỂM TRA TRÙNG PHÒNG / GIẢNG VIÊN
    // =====================================================

    /**
     * Kiểm tra xem phòng hoặc giảng viên có bị trùng lịch không
     */
    public boolean isRoomOrInstructorBusy(ClassSchedule schedule, String instructorId) {

        boolean roomBusy = scheduleRepository.existsRoomConflict(
                schedule.getRoom().getRoomId(),
                schedule.getDayOfWeek(),
                schedule.getStartPeriod(),
                schedule.getEndPeriod()
        );

        boolean instructorBusy = scheduleRepository.existsTeacherConflict(
                instructorId,
                schedule.getDayOfWeek(),
                schedule.getStartPeriod(),
                schedule.getEndPeriod()
        );

        return roomBusy || instructorBusy;
    }

    // =====================================================
    // 2. KIỂM TRA CA HỌC HỢP LỆ
    // =====================================================

    /**
     * Kiểm tra ca học có nằm trong khung hợp lệ không
     * (VD: 1-6, 7-12, 13-16)
     */
    public boolean isValidShift(int start, int end) {

        if (start > end) {
			return false;
		}

        return (start >= 1 && end <= 6)
                || (start >= 7 && end <= 12)
                || (start >= 13 && end <= 16);
    }

    // =====================================================
    // 3. TẠO / LƯU LỚP HỌC + LỊCH HỌC
    // =====================================================

    /**
     * Lưu lớp học đầy đủ (Class + Schedule)
     */
    @Transactional
    public void saveFullClass(Classes cls, List<ClassSchedule> schedules) {

        // Lấy học kỳ đang active
        Semester activeSem = semesterRepository.findByIsActiveTrue()
                .orElseThrow(() -> new RuntimeException("Chưa mở học kỳ!"));

        // Gán dữ liệu mặc định cho lớp
        cls.setSemester(activeSem);
        cls.setCurrentStudents(0);
        cls.setStatus("OPEN");

        String instructorId = cls.getInstructor().getInstructorId();

        // Validate từng lịch học
        for (ClassSchedule sch : schedules) {

            // 1. Check ca học hợp lệ
            if (!isValidShift(sch.getStartPeriod(), sch.getEndPeriod())) {
                throw new RuntimeException("Ca học không hợp lệ!");
            }

            // 2. Check trùng phòng / giảng viên
            if (isRoomOrInstructorBusy(sch, instructorId)) {
                throw new RuntimeException("Trùng lịch: " + sch.getGroupName());
            }

            // 3. Gán quan hệ ngược
            sch.setClasses(cls);
        }

        cls.setSchedules(schedules);
        classesRepository.save(cls);
    }

    // =====================================================
    // 4. TÍNH HỌC KỲ HIỆN TẠI CỦA SINH VIÊN
    // =====================================================

    /**
     * Tính số học kỳ đã học (chỉ tính HK1 + HK2)
     */
    public int calculateCurrentSemester(Student student, Semester activeSem) {

        if (activeSem == null) {
			return 0;
		}

        List<Semester> allSemesters = semesterRepository.findAll();

        long count = allSemesters.stream()
                .filter(s -> s.getYear() >= student.getEnrollmentYear())
                .filter(s -> {
                    if (s.getYear() < activeSem.getYear()) {
						return true;
					}

                    if (s.getYear() == activeSem.getYear()) {
                        return compareTerms(s.getTerm(), activeSem.getTerm()) <= 0;
                    }

                    return false;
                })
                // chỉ tính HK1 + HK2
                .filter(s ->
                        s.getTerm().equalsIgnoreCase("HK1")
                                || s.getTerm().equalsIgnoreCase("HK2")
                )
                .count();

        return (int) count;
    }

    // =====================================================
    // 5. SO SÁNH THỨ TỰ HỌC KỲ
    // =====================================================

    /**
     * HK1 < HK2 < HK3
     */
    private int compareTerms(String t1, String t2) {

        Map<String, Integer> order = Map.of(
                "HK1", 1,
                "HK2", 2,
                "HK3", 3
        );

        return order.getOrDefault(t1, 0)
                - order.getOrDefault(t2, 0);
    }

    // =====================================================
    // 6. LẤY LỚP ĐỦ ĐIỀU KIỆN CHO SINH VIÊN
    // =====================================================

    /**
     * Lấy lớp phù hợp theo học kỳ + hệ đào tạo
     */
    public List<Classes> getEligibleClasses(int maxSem, int semesterId, String trainingType) {
        return classesRepository.findEligibleClasses(maxSem, semesterId, trainingType);
    }

    /**
     * Lấy danh sách lớp cho sinh viên đăng ký
     */
    @Transactional(readOnly = true)
    public List<Classes> getClassesForStudent(Student student) {

        Semester activeSem = semesterRepository.findByIsActiveTrue()
                .orElseThrow(() -> new RuntimeException("Chưa mở đợt đăng ký"));

        int maxSem = calculateCurrentSemester(student, activeSem);

        // Kỳ hè
        if ("HK3".equalsIgnoreCase(activeSem.getTerm())) {
            return classesRepository
                    .findAllBySemesterSemesterIdAndTrainingTypeIgnoreCase(
                            activeSem.getSemesterId(),
                            student.getTrainingType()
                    );
        }

        // Kỳ chính
        return getEligibleClasses(
                maxSem,
                activeSem.getSemesterId(),
                student.getTrainingType()
        );
    }

    // =====================================================
    // 7. SAVE SIMPLE CLASS
    // =====================================================

    /**
     * Lưu lớp đơn giản
     */
    public void save(Classes newClass) {
        classesRepository.save(newClass);
    }


}