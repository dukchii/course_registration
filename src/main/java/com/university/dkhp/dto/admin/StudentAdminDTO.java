package com.university.dkhp.dto.admin;

import java.util.List;

public class StudentAdminDTO {

    private String studentId;
    private String username;
    private String fullName;
    private String majorName;
    private String trainingType;
    private Integer currentSemester;

    private List<EnrollmentAdminDTO> enrollments;

    public StudentAdminDTO() {
    }

    public StudentAdminDTO(String studentId,
                           String username,
                           String fullName,
                           String majorName,
                           String trainingType,
                           Integer currentSemester,
                           List<EnrollmentAdminDTO> enrollments) {
        this.studentId = studentId;
        this.username = username;
        this.fullName = fullName;
        this.majorName = majorName;
        this.trainingType = trainingType;
        this.currentSemester = currentSemester;
        this.enrollments = enrollments;
    }

    public String getStudentId() {
        return studentId;
    }

    public String getUsername() {
        return username;
    }

    public String getFullName() {
        return fullName;
    }

    public String getMajorName() {
        return majorName;
    }

    public String getTrainingType() {
        return trainingType;
    }

    public Integer getCurrentSemester() {
        return currentSemester;
    }

    public List<EnrollmentAdminDTO> getEnrollments() {
        return enrollments;
    }
}