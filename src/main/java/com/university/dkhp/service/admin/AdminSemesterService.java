package com.university.dkhp.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.dkhp.entity.Semester;
import com.university.dkhp.repository.SemesterRepository;

@Service
public class AdminSemesterService {

    @Autowired
    private SemesterRepository semesterRepository;

    // =====================================================
    // GET ALL
    // =====================================================
    public List<Semester> getAllSemesters() {
        return semesterRepository.findAll();
    }

    // =====================================================
    // GET ACTIVE
    // =====================================================
    public Semester getActiveSemester() {
        return semesterRepository.findByIsActiveTrue().orElse(null);
    }

    // =====================================================
    // ACTIVATE SEMESTER
    // =====================================================
    public void activateSemester(Integer id) {

        Semester sem = semesterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy học kỳ"));

        semesterRepository.findAll().forEach(s -> s.setIsActive(false));

        sem.setIsActive(true);
        semesterRepository.save(sem);
    }

    // =====================================================
    // ADD SEMESTER
    // =====================================================
    public void addSemester(Semester semester) {
        semester.setIsActive(false);
        semesterRepository.save(semester);
    }

    // =====================================================
    // DELETE SEMESTER
    // =====================================================
    public void deleteSemester(Integer id) {
        semesterRepository.deleteById(id);
    }

    // =====================================================
    // TOGGLE REGISTRATION
    // =====================================================
    public void toggleRegistration(Integer id) {

        Semester sem = semesterRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy học kỳ"));

        sem.setRegistrationOpen(!sem.isRegistrationOpen());
        semesterRepository.save(sem);
    }
}