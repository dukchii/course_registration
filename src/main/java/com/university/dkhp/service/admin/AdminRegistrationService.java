package com.university.dkhp.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.entity.Classes;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.EnrollmentRepository;

/**
 * RESET & QUẢN LÝ ĐĂNG KÝ
 */
@Service
public class AdminRegistrationService {

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    @Autowired
    private ClassesRepository classesRepository;

    @Transactional
    public void resetRegistrationData() {

        enrollmentRepository.deleteAll();

        List<Classes> all = classesRepository.findAll();

        for (Classes c : all) {
            c.setCurrentStudents(0);
            c.setStatus("OPEN");
        }

        classesRepository.saveAll(all);
    }
}