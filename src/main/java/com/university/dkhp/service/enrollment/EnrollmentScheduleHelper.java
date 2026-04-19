package com.university.dkhp.service.enrollment;

import java.util.List;

import com.university.dkhp.entity.ClassSchedule;

/**
 * HELPER:
 * xử lý logic lịch học
 */
public class EnrollmentScheduleHelper {

    public static List<ClassSchedule> filter(List<ClassSchedule> list, Long practiceId) {
        return list.stream()
                .filter(s -> s.getType().equalsIgnoreCase("THEORY")
                        || (practiceId != null && s.getScheduleId().equals(practiceId)))
                .toList();
    }

    public static boolean isConflict(List<ClassSchedule> a, List<ClassSchedule> b) {
        for (ClassSchedule s1 : a) {
            for (ClassSchedule s2 : b) {
                if (s1.getDayOfWeek() == s2.getDayOfWeek()) {
                    if (Math.max(s1.getStartPeriod(), s2.getStartPeriod())
                            <= Math.min(s1.getEndPeriod(), s2.getEndPeriod())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}