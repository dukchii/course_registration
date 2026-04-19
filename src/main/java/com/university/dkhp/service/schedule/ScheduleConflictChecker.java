package com.university.dkhp.service.schedule;

import java.util.List;

import org.springframework.stereotype.Component;

import com.university.dkhp.entity.ClassSchedule;

@Component
public class ScheduleConflictChecker {

    public boolean hasConflict(List<ClassSchedule> list1, List<ClassSchedule> list2) {

        for (ClassSchedule s1 : list1) {
            for (ClassSchedule s2 : list2) {

                if (s1.getDayOfWeek() == s2.getDayOfWeek()) {

                    boolean overlap =
                            Math.max(s1.getStartPeriod(), s2.getStartPeriod())
                            <= Math.min(s1.getEndPeriod(), s2.getEndPeriod());

                    if (overlap) {
						return true;
					}
                }
            }
        }
        return false;
    }
}