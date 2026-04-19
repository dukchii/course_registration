package com.university.dkhp.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.dto.admin.EnrollmentAdminDTO;
import com.university.dkhp.dto.admin.StudentAdminDTO;
import com.university.dkhp.entity.Enrollment;
import com.university.dkhp.entity.Student;
import com.university.dkhp.entity.User;
import com.university.dkhp.repository.EnrollmentRepository;
import com.university.dkhp.repository.StudentRepository;
import com.university.dkhp.repository.UserRepository;
import com.university.dkhp.service.RegistrationService;

@Service
public class AdminStudentService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    @Autowired
    private RegistrationService registrationService;

    private final StudentRepository studentRepository;
    public AdminStudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    // =====================================================
    // Load danh sách sinh viên kèm dữ liệu liên quan
    // =====================================================
    @Transactional(readOnly = true)
    public List<StudentAdminDTO> getStudentsForAdmin() {
        return studentRepository.findAllStudentsForAdmin()
                .stream()
                .map(this::toDTO)
                .toList();
    }

    private StudentAdminDTO toDTO(Student student) {

        List<EnrollmentAdminDTO> enrollments = student.getEnrollments()
                .stream()
                .map(en -> new EnrollmentAdminDTO(
                        en.getEnrollmentId(),
                        en.getClasses().getClassId(),
                        en.getClasses().getClassName(),
                        en.getClasses().getCourse().getCourseName()
                ))
                .toList();

        return new StudentAdminDTO(
                student.getStudentId(),
                student.getUser() != null ? student.getUser().getUsername() : "",
                student.getFullName(),
                student.getMajor() != null ? student.getMajor().getMajorName() : "",
                student.getTrainingType(),
                student.getCurrentSemester(),
                enrollments
        );
    }

    // =====================================================
    // GET ALL STUDENTS
    // =====================================================
    public List<User> getAllStudents() {
        return userRepository.findByRoleName("ROLE_STUDENT");
    }

    // =====================================================
    // CANCEL ENROLLMENT (ADMIN ACTION)
    // =====================================================
    @Transactional
    public void cancelEnrollment(Long enrollmentId) {

        Enrollment en = enrollmentRepository.findById(enrollmentId)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy đăng ký"));

        registrationService.cancelEnrollment(
                en.getStudent().getStudentId(),
                en.getClasses().getClassId()
        );
    }
}