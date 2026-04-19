package com.university.dkhp.service.enrollment;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Course;
import com.university.dkhp.entity.Enrollment;
import com.university.dkhp.repository.AcademicResultRepository;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.EnrollmentRepository;
import com.university.dkhp.repository.StudentRepository;

/**
 * SERVICE CHÍNH XỬ LÝ ĐĂNG KÝ HỌC PHẦN
 * - Điều phối toàn bộ nghiệp vụ DKHP
 * - Gọi Validator / Processor / Checker
 */
@Service
public class EnrollmentService {

    private final ClassesRepository classesRepository;
    private final EnrollmentRepository enrollmentRepository;

    private final EnrollmentValidator validator;
    private final EnrollmentProcessor processor;
    private final EnrollmentConflictChecker conflictChecker;

    // Constructor injection thủ công
    public EnrollmentService(
            ClassesRepository classesRepository,
            EnrollmentRepository enrollmentRepository,
            StudentRepository studentRepository,
            AcademicResultRepository academicResultRepository,
            EnrollmentValidator validator,
            EnrollmentProcessor processor,
            EnrollmentConflictChecker conflictChecker
    ) {
        this.classesRepository = classesRepository;
        this.enrollmentRepository = enrollmentRepository;
        this.validator = validator;
        this.processor = processor;
        this.conflictChecker = conflictChecker;
    }

    /**
     * ĐĂNG KÝ LỚP HỌC
     */
    @Transactional
    public String register(String studentId, Long classId, Long practiceId) {

        var ctx = validator.validate(studentId, classId, practiceId);

        if (!ctx.isValid()) {
            return ctx.getMessage();
        }

        if (conflictChecker.hasDuplicateCourse(ctx)) {
            return "Đã đăng ký môn này rồi";
        }

        if (conflictChecker.hasScheduleConflict(ctx)) {
            return "Trùng lịch học";
        }

        processor.saveEnrollment(ctx);
        return "SUCCESS";
    }

    /**
     * HỦY ĐĂNG KÝ
     */
    @Transactional
    public void cancel(String studentId, Long classId) {
        enrollmentRepository.findByStudentStudentId(studentId)
                .stream()
                .filter(e -> e.getClasses().getClassId().equals(classId))
                .findFirst()
                .ifPresent(e -> {

                    e.getClasses().setCurrentStudents(
                            Math.max(0, e.getClasses().getCurrentStudents() - 1)
                    );

                    classesRepository.save(e.getClasses());
                    enrollmentRepository.delete(e);
                });
    }

    /**
     * ĐỔI LỚP
     */
    @Transactional
    public String change(String studentId, Long oldClassId, Long newClassId, Long practiceId) {
        // 1. Validate lớp mới (Tiên quyết, hệ đào tạo, trạng thái mở...)
        var ctx = validator.validate(studentId, newClassId, practiceId);
        if (!ctx.isValid()) {
            return ctx.getMessage();
        }

        // 2. Lấy danh sách môn hiện tại để check trùng lịch
        // QUAN TRỌNG: Loại bỏ lớp cũ ra khỏi danh sách kiểm tra để không tự trùng với chính mình
        List<Enrollment> currentEnrolls = ctx.getCurrentEnrollments();
        currentEnrolls.removeIf(e -> e.getClasses().getClassId().equals(oldClassId));

        // 3. Check trùng lịch với các môn còn lại
        if (conflictChecker.hasScheduleConflict(ctx)) { // Đảm bảo checker của bạn dùng danh sách đã lọc
            return "LỖI: Lớp mới trùng lịch với các môn khác đang học";
        }

        // 4. Check xem lớp mới có cùng môn với lớp cũ không (Tránh đăng ký 2 lớp cùng 1 môn)
        // (Thường validator hoặc conflictChecker của bạn đã có hasDuplicateCourse)

        try {
            // 5. Thực hiện hoán đổi
            cancel(studentId, oldClassId); // Hủy lớp cũ
            processor.saveEnrollment(ctx);                    // Đăng ký lớp mới

            return "SUCCESS";
        } catch (Exception e) {
            // Vì có @Transactional, nếu bước này lỗi, lớp cũ sẽ TỰ ĐỘNG được khôi phục
            return "LỖI HỆ THỐNG: " + e.getMessage();
        }
    }

    /**
     * XÓA TOÀN BỘ ĐĂNG KÝ (ADMIN) dành cho khi reset dữ liệu
     */
    @Transactional
    public void deleteAllRegistrations() {
        enrollmentRepository.deleteAll();

        classesRepository.findAll().forEach(c -> c.setCurrentStudents(0));
        classesRepository.saveAll(classesRepository.findAll());
    }

    /**
     * GROUP CLASS THEO MÔN HỌC
     */
    public Map<Course, List<Classes>> groupByTrainingType(String trainingType) {
        return classesRepository.findByTrainingType(trainingType)
                .stream()
                .collect(Collectors.groupingBy(Classes::getCourse));
    }

    /**
     * LẤY DANH SÁCH ĐĂNG KÝ
     */
    public List<Enrollment> getStudentEnrollments(String studentId) {
        return enrollmentRepository.findByStudentStudentId(studentId);
    }


    /**
     * LẤY TẤT CẢ LỚP
     */
    public List<Classes> getAllClasses() {
        return classesRepository.findAll();
    }
}