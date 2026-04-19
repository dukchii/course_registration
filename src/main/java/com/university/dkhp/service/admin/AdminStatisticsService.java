package com.university.dkhp.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.dkhp.entity.Classes;
import com.university.dkhp.repository.ClassesRepository;

/**
 * THỐNG KÊ ADMIN
 */
@Service
public class AdminStatisticsService {

    @Autowired
    private ClassesRepository classesRepository;

    public List<Classes> getLowCapacityClasses(int threshold) {

        return classesRepository.findAll()
                .stream()
                .filter(c ->
                        c.getCurrentStudents() < threshold
                                && !"CANCELLED".equals(c.getStatus())
                )
                .toList();
    }
}