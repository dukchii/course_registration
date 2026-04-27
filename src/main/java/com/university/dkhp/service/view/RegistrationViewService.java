package com.university.dkhp.service.view;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.dto.registration.ClassDTO;
import com.university.dkhp.dto.registration.CourseGroupDTO;
import com.university.dkhp.dto.registration.EnrollmentDTO;
import com.university.dkhp.dto.registration.RegistrationPageDTO;
import com.university.dkhp.dto.registration.ScheduleDTO;
import com.university.dkhp.dto.registration.SemesterDTO;
import com.university.dkhp.dto.registration.StudentDTO;
import com.university.dkhp.entity.AcademicResult;
import com.university.dkhp.entity.ClassSchedule;
import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Course;
import com.university.dkhp.entity.Enrollment;
import com.university.dkhp.entity.Semester;
import com.university.dkhp.entity.Student;
import com.university.dkhp.repository.AcademicResultRepository;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.SemesterRepository;
import com.university.dkhp.repository.StudentRepository;
import com.university.dkhp.service.ClassesService;
import com.university.dkhp.service.RegistrationService;

@Service
public class RegistrationViewService {
    @Autowired
    private RegistrationService registrationService;
    @Autowired
    private SemesterRepository semesterRepository;
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private AcademicResultRepository academicResultRepository;
    @Autowired
    private ClassesService classesService;	
    @Autowired
    private ClassesRepository classesRepository; // Cần thiết để lấy lớp theo kỳ chọn

    @Transactional(readOnly = true)
    public RegistrationPageDTO buildRegistrationView(String studentId, Integer semesterId) {
        Student student = studentRepository.findById(studentId).orElseThrow();

        // --- 1. XÁC ĐỊNH HỌC KỲ MẶC ĐỊNH ---
        Semester defaultSem;
        if (semesterId != null) {
            defaultSem = semesterRepository.findById(semesterId).orElseThrow();
        } else {
            // Ưu tiên 1: Kỳ đang mở đăng ký (isRegistrationOpen = true)
            // Ưu tiên 2: Kỳ đang Active (isActive = true)
            // Ưu tiên 3: Kỳ mới nhất trong hệ thống
            defaultSem = semesterRepository.findByIsRegistrationOpenTrue()
                .orElseGet(() -> semesterRepository.findByIsActiveTrue()
                .orElseGet(() -> semesterRepository.findAllOrderByLatest().get(0)));
        }

        RegistrationPageDTO dto = new RegistrationPageDTO();
        dto.setStudent(toStudentDTO(student));
        dto.setSemesterId(defaultSem.getSemesterId());
        int currentSemRank = classesService.calculateCurrentSemester(student, defaultSem);
        dto.setCurrentSemRank(currentSemRank);

        // --- 2. THIẾT LẬP TRẠNG THÁI KHÓA NÚT ---
        // registrationOpen trong DTO sẽ lấy giá trị từ isRegistrationOpen của Entity được chọn
        dto.setRegistrationOpen(defaultSem.isRegistrationOpen());

        // --- 3. LẤY DỮ LIỆU LỚP HỌC ---
        // Chỉ lấy những lớp thuộc học kỳ đang được chọn
        List<Classes> eligibleClasses = classesRepository.findAllBySemesterSemesterIdAndTrainingTypeIgnoreCase(
                defaultSem.getSemesterId(),
                student.getTrainingType()
        );

        // 6. Phân loại Tab dựa trên kết quả học tập
        List<AcademicResult> results = academicResultRepository.findByStudentStudentId(studentId);
        Set<String> passedIds = results.stream()
                .filter(r -> "PASSED".equalsIgnoreCase(r.getStatus()))
                .map(r -> r.getCourse().getCourseId()).collect(Collectors.toSet());

        Set<String> failedIds = results.stream()
                .filter(r -> "FAILED".equalsIgnoreCase(r.getStatus()))
                .map(r -> r.getCourse().getCourseId()).collect(Collectors.toSet());

        Map<String, Map<Course, List<Classes>>> grouped = eligibleClasses.stream()
                .collect(Collectors.groupingBy(c -> {
                    Course course = c.getCourse();
                    String cid = course.getCourseId();

                    // 1. Check Học lại (Đã từng FAILED và chưa bao giờ PASSED)
                    if (failedIds.contains(cid) && !passedIds.contains(cid)) {
						return "RETRY";
					}

                    // 2. Check Cải thiện (Đã PASSED)
                    if (passedIds.contains(cid)) {
						return "UPGRADE";
					}

                    // 3. Check Môn mới (Chưa học bao giờ)
                    // ĐIỀU KIỆN: Phải pass hết các môn tiên quyết của nó
                    boolean prerequisiteMet = course.getPrerequisites().isEmpty() ||
                        course.getPrerequisites().stream().allMatch(p -> passedIds.contains(p.getCourseId()));

                    if (prerequisiteMet) {
						return "NEW";
					}

                    return "LOCKED"; // Môn chưa học nhưng chưa đủ điều kiện tiên quyết
                }, Collectors.groupingBy(Classes::getCourse)));

        dto.setNewCourses(buildCourseGroups(grouped.getOrDefault("NEW", Map.of())));
        dto.setRetryCourses(buildCourseGroups(grouped.getOrDefault("RETRY", Map.of())));
        dto.setUpgradeCourses(buildCourseGroups(grouped.getOrDefault("UPGRADE", Map.of())));
        dto.setLockedCourses(buildCourseGroups(grouped.getOrDefault("LOCKED", Map.of())));
        // 7.THỜI KHÓA BIỂU
        Semester selectedSem = (semesterId != null)
        	    ? semesterRepository.findById(semesterId).orElseThrow()
        	    : defaultSem; // defaultSem là kỳ ưu tiên OPEN hoặc NEWEST
        List<Enrollment> currentEnrollments = registrationService.getStudentEnrollmentsBySemester(studentId, selectedSem.getSemesterId());

        List<EnrollmentDTO> enrollmentDTOs = currentEnrollments.stream()
                .map(this::toEnrollmentDTO)
                .toList();

        dto.setRegisteredEnrollments(enrollmentDTOs);
        dto.setRegisteredSafe(enrollmentDTOs); // Biến này dùng để JS vẽ lịch học

        // 8. Toàn bộ lớp cho JS
        dto.setAllClasses(eligibleClasses.stream().map(this::toClassDTO).toList());

        // 9. Danh sách học kỳ cho Select box
        dto.setAllSemesters(semesterRepository.findAllOrderByLatest().stream().map(s -> {
            SemesterDTO d = new SemesterDTO();
            d.setSemesterId(s.getSemesterId());
            d.setTerm(s.getTerm());
            d.setYear(s.getYear());
            return d;
        }).toList());

        return dto;
    }

    // --- MAPPING HELPERS ---

    private StudentDTO toStudentDTO(Student s) {
        StudentDTO d = new StudentDTO();
        d.setStudentId(s.getStudentId());
        d.setFullName(s.getFullName());
        d.setTrainingType(s.getTrainingType());
        d.setEnrollmentYear(s.getEnrollmentYear());
        return d;
    }

    private EnrollmentDTO toEnrollmentDTO(Enrollment e) {
        EnrollmentDTO d = new EnrollmentDTO();
        d.setCourseId(e.getClasses().getCourse().getCourseId());
        d.setCourseName(e.getClasses().getCourse().getCourseName());
        d.setClassName(e.getClasses().getClassName());
        d.setClassId(e.getClasses().getClassId());
     // LẤY TÊN GIẢNG VIÊN TỪ ENTITY CLASSES
        if (e.getClasses().getInstructor() != null) {
            d.setInstructorName(e.getClasses().getInstructor().getFullName());
        } else {
            d.setInstructorName("Chưa cập nhật");
        }
        // Ánh xạ từ selectedPracticeId của Entity sang registeredPracticeId của DTO
        d.setRegisteredPracticeId(e.getSelectedPracticeId());

        // Quan trọng: Phải map schedules để JS có dữ liệu vẽ lịch
        d.setSchedules(mapSchedules(e.getClasses().getSchedules()));
        return d;
    }

    private ClassDTO toClassDTO(Classes c) {
        ClassDTO cd = new ClassDTO();
        cd.setClassId(c.getClassId());
        cd.setClassName(c.getClassName());
        cd.setStatus(c.getStatus()); // Mapping status
        cd.setCurrentStudents(c.getCurrentStudents());
        cd.setMaxStudents(c.getMaxStudents());
        cd.setSchedules(mapSchedules(c.getSchedules())); // Cực kỳ quan trọng để JS vẽ lịch
        cd.setInstructorName(c.getInstructor() != null ? c.getInstructor().getFullName() : "N/A");
        return cd;
    }

    private List<ScheduleDTO> mapSchedules(List<ClassSchedule> schedules) {
        if (schedules == null) {
			return List.of();
		}
        return schedules.stream().map(s -> {
            ScheduleDTO sd = new ScheduleDTO();
            sd.setScheduleId(s.getScheduleId());
            sd.setDayOfWeek(s.getDayOfWeek());
            sd.setStartPeriod(s.getStartPeriod());
            sd.setEndPeriod(s.getEndPeriod());
            sd.setType(s.getType());
            sd.setGroupName(s.getGroupName());
            return sd;
        }).toList();
    }

    private List<CourseGroupDTO> buildCourseGroups(Map<Course, List<Classes>> map) {
        return map.entrySet().stream().map(entry -> {
            Course c = entry.getKey();
            CourseGroupDTO dto = new CourseGroupDTO();
            dto.setCourseId(c.getCourseId());
            dto.setCourseName(c.getCourseName());
            dto.setCredits(c.getCredits());
            dto.setRecommendedSemester(c.getRecommendedSemester());
            dto.setPrerequisiteName(c.getPrerequisites().stream()
                    .map(Course::getCourseName).distinct().collect(Collectors.joining(", ")));
            dto.setClasses(entry.getValue().stream()
            	    .map(this::toClassDTO) // Sử dụng lại hàm đã viết ở dòng 139
            	    .toList());
            return dto;
        }).toList();
    }
}