package com.university.dkhp.service.semester;

import org.springframework.stereotype.Service;

import com.university.dkhp.entity.Semester;
import com.university.dkhp.repository.SemesterRepository;

@Service
public class SemesterServiceImpl implements SemesterService {

    private final SemesterRepository semesterRepository;

    public SemesterServiceImpl(SemesterRepository semesterRepository) {
    	this.semesterRepository = semesterRepository;
    }

    @Override
    public void setCurrentSemester(Integer semesterId) {

        semesterRepository.disableAllSemesters();

        Semester sem = semesterRepository.findById(semesterId)
                .orElseThrow(() -> new RuntimeException("Semester not found"));

        sem.setIsActive(true);
        semesterRepository.save(sem);
    }

    @Override
    public void toggleRegistration(Integer semesterId, boolean status) {

        Semester sem = semesterRepository.findById(semesterId)
                .orElseThrow(() -> new RuntimeException("Semester not found"));

        sem.setRegistrationOpen(status);
        semesterRepository.save(sem);
    }
}