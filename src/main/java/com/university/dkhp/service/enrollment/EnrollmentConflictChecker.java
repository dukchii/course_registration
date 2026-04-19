package com.university.dkhp.service.enrollment;

import java.util.List;

import org.springframework.stereotype.Component;

import com.university.dkhp.entity.ClassSchedule;
import com.university.dkhp.entity.Enrollment;

/**
 * CHECKER:
 * - trùng môn
 * - trùng lịch
 */
@Component
public class EnrollmentConflictChecker {

    public boolean hasDuplicateCourse(EnrollmentContext ctx) {

        for (Enrollment e : ctx.getCurrentEnrollments()) {
            if (e.getClasses().getCourse().getCourseId()
                    .equals(ctx.getNewClass().getCourse().getCourseId())) {
                return true;
            }
        }
        return false;
    }

    public boolean hasScheduleConflict(EnrollmentContext ctx) {

        List<ClassSchedule> newSchedules =
                EnrollmentScheduleHelper.filter(
                        ctx.getNewClass().getSchedules(),
                        ctx.getPracticeId()
                );

        for (Enrollment e : ctx.getCurrentEnrollments()) {

            List<ClassSchedule> oldSchedules =
                    EnrollmentScheduleHelper.filter(
                            e.getClasses().getSchedules(),
                            e.getSelectedPracticeId()
                    );

            if (EnrollmentScheduleHelper.isConflict(oldSchedules, newSchedules)) {
                return true;
            }
        }
        return false;
    }
}