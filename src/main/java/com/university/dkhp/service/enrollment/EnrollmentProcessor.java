package com.university.dkhp.service.enrollment;

import org.springframework.stereotype.Service;

import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Enrollment;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.EnrollmentRepository;

/**
 * PROCESSOR:
 * Lưu dữ liệu đăng ký + cập nhật sĩ số
 */
@Service
public class EnrollmentProcessor {

    private final EnrollmentRepository enrollmentRepository;
    private final ClassesRepository classesRepository;

    public EnrollmentProcessor(
            EnrollmentRepository enrollmentRepository,
            ClassesRepository classesRepository
    ) {
        this.enrollmentRepository = enrollmentRepository;
        this.classesRepository = classesRepository;
    }

    public void saveEnrollment(EnrollmentContext ctx) {

        Enrollment en = new Enrollment();
        en.setStudent(ctx.getStudent());
        en.setClasses(ctx.getNewClass());
        en.setSelectedPracticeId(ctx.getPracticeId());
        en.setStatus("ENROLLED");

        enrollmentRepository.save(en);

        Classes c = ctx.getNewClass();
        c.setCurrentStudents(c.getCurrentStudents() + 1);

        classesRepository.save(c);
    }
}