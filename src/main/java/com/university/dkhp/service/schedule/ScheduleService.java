package com.university.dkhp.service.schedule;

import java.util.List;

import org.springframework.stereotype.Service;

import com.university.dkhp.entity.ClassSchedule;

@Service
public class ScheduleService {

    private final ScheduleConflictChecker checker;

    public ScheduleService(ScheduleConflictChecker checker) {
        this.checker = checker;
    }

    public boolean isConflict(List<ClassSchedule> oldList, List<ClassSchedule> newList) {
        return checker.hasConflict(oldList, newList);
    }
}