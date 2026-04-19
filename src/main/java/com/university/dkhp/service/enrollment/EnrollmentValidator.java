package com.university.dkhp.service.enrollment;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.university.dkhp.entity.AcademicResult;
import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Course;
import com.university.dkhp.entity.Enrollment;
import com.university.dkhp.entity.Student;
import com.university.dkhp.repository.AcademicResultRepository;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.EnrollmentRepository;
import com.university.dkhp.repository.StudentRepository;

/**
 * VALIDATOR:
 * Kiểm tra điều kiện đăng ký:
 * - hệ đào tạo
 * - trạng thái lớp
 * - sĩ số
 * - học kỳ hè
 */
@Service
public class EnrollmentValidator {

    private final ClassesRepository classesRepository;
    private final StudentRepository studentRepository;
    private final EnrollmentRepository enrollmentRepository;
    private final AcademicResultRepository academicResultRepository;

    public EnrollmentValidator(
            ClassesRepository classesRepository,
            StudentRepository studentRepository,
            EnrollmentRepository enrollmentRepository,
            AcademicResultRepository academicResultRepository
    ) {
        this.classesRepository = classesRepository;
        this.studentRepository = studentRepository;
        this.enrollmentRepository = enrollmentRepository;
        this.academicResultRepository = academicResultRepository;
    }
    public EnrollmentContext validate(String studentId, Long classId, Long practiceId) {

        Classes newClass = classesRepository.findById(classId)
                .orElseThrow(() -> new RuntimeException("Lớp không tồn tại"));

        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new RuntimeException("Sinh viên không tồn tại"));

        // 1. Kiểm tra hệ đào tạo
        if (!newClass.getTrainingType().equalsIgnoreCase(student.getTrainingType())) {
            return EnrollmentContext.fail("LỖI: Lớp học không thuộc hệ đào tạo của bạn (" + student.getTrainingType() + ")");
        }

        // 2. Kiểm tra trạng thái lớp
        if (!"OPEN".equals(newClass.getStatus())) {
            return EnrollmentContext.fail("LỖI: Lớp học hiện đang đóng, không thể đăng ký");
        }

        // 3. Kiểm tra sĩ số
        if (newClass.getCurrentStudents() >= newClass.getMaxStudents()) {
            return EnrollmentContext.fail("LỖI: Lớp đã đầy sĩ số (Max: " + newClass.getMaxStudents() + ")");
        }

        // 4. KIỂM TRA MÔN TIÊN QUYẾT (Logic mới)
        Course currentCourse = newClass.getCourse();
        if (currentCourse.getPrerequisites() != null && !currentCourse.getPrerequisites().isEmpty()) {

            // Lấy danh sách ID các môn sinh viên đã PASS
            List<AcademicResult> results = academicResultRepository.findByStudentStudentId(studentId);
            Set<String> passedCourseIds = results.stream()
                    .filter(r -> "PASSED".equalsIgnoreCase(r.getStatus()))
                    .map(r -> r.getCourse().getCourseId())
                    .collect(Collectors.toSet());

            // Kiểm tra xem có môn tiên quyết nào chưa pass không
            List<String> missingPrerequisites = currentCourse.getPrerequisites().stream()
                    .map(Course::getCourseId)
                    .filter(id -> !passedCourseIds.contains(id))
                    .toList();

            if (!missingPrerequisites.isEmpty()) {
                String missingNames = currentCourse.getPrerequisites().stream()
                        .filter(p -> missingPrerequisites.contains(p.getCourseId()))
                        .map(Course::getCourseName)
                        .collect(Collectors.joining(", "));

                return EnrollmentContext.fail("LỖI: Bạn chưa hoàn thành môn tiên quyết: " + missingNames);
            }
        }

        // 5. Lấy danh sách đã đăng ký để chuyển sang cho ConflictChecker xử lý tiếp
        List<Enrollment> current = enrollmentRepository.findByStudentStudentId(studentId);

        return EnrollmentContext.success(student, newClass, practiceId, current);
    }
}