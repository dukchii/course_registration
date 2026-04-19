package com.university.dkhp.service.enrollment;

import java.util.List;

import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Enrollment;
import com.university.dkhp.entity.Student;

public class EnrollmentContext {

    private boolean valid;
    private String message;

    private Student student;
    private Classes newClass;
    private Long practiceId;
    private List<Enrollment> currentEnrollments;

    public static EnrollmentContext fail(String message) {
        EnrollmentContext ctx = new EnrollmentContext();
        ctx.valid = false;
        ctx.message = message;
        return ctx;
    }

    public static EnrollmentContext success(
            Student student,
            Classes newClass,
            Long practiceId,
            List<Enrollment> currentEnrollments
    ) {
        EnrollmentContext ctx = new EnrollmentContext();
        ctx.valid = true;
        ctx.student = student;
        ctx.newClass = newClass;
        ctx.practiceId = practiceId;
        ctx.currentEnrollments = currentEnrollments;
        return ctx;
    }

    public boolean isValid() { return valid; }
    public String getMessage() { return message; }

    public Student getStudent() { return student; }
    public Classes getNewClass() { return newClass; }
    public Long getPracticeId() { return practiceId; }
    public List<Enrollment> getCurrentEnrollments() { return currentEnrollments; }
}