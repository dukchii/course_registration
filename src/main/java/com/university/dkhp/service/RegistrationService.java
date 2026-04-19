package com.university.dkhp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Course;
import com.university.dkhp.entity.Enrollment;
import com.university.dkhp.repository.EnrollmentRepository;
import com.university.dkhp.service.enrollment.EnrollmentService;

// lớp trung gian gọi sang EnrollmentService
// không xử lý logic

@Service
public class RegistrationService {

    private final EnrollmentService enrollmentService;
    @Autowired private EnrollmentRepository enrollmentRepository;
    public RegistrationService(EnrollmentService enrollmentService) {
    	this.enrollmentService = enrollmentService;
    }

    public List<Classes> getAllClasses() {
        return enrollmentService.getAllClasses();
    }

    @Transactional
    public String registerClass(String studentId, Long classId, Long practiceScheduleId) {
        return enrollmentService.register(studentId, classId, practiceScheduleId);
    }
    public List<Enrollment> getStudentEnrollmentsBySemester(String studentId, Integer semesterId) {
        return enrollmentRepository.findByStudentStudentIdAndClassesSemesterSemesterId(studentId, semesterId);
    }

    @Transactional
    public void cancelEnrollment(String studentId, Long classId) {
        enrollmentService.cancel(studentId, classId);
    }

    @Transactional
    public String changeClass(String studentId, Long oldClassId, Long newClassId, Long practiceId) {
        return enrollmentService.change(studentId, oldClassId, newClassId, practiceId);
    }

    public List<Enrollment> getStudentEnrollments(String studentId) {
        return enrollmentService.getStudentEnrollments(studentId);
    }

    public Map<Course, List<Classes>> getGroupedClassesByTrainingType(String trainingType) {
        return enrollmentService.groupByTrainingType(trainingType);
    }
}