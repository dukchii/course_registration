package com.university.dkhp.service.enrollment;

import org.springframework.stereotype.Component;

import com.university.dkhp.entity.Classes;

@Component
public class EnrollmentCapacityService {

    public boolean isFull(Classes c) {
        return c.getCurrentStudents() >= c.getMaxStudents();
    }
}