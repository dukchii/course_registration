package com.university.dkhp.dto.admin;

public class EnrollmentAdminDTO {

    private Long enrollmentId;
    private Long classId;
    private String className;
    private String courseName;

    public EnrollmentAdminDTO() {
    }

    public EnrollmentAdminDTO(Long enrollmentId,
                              Long classId,
                              String className,
                              String courseName) {
        this.enrollmentId = enrollmentId;
        this.classId = classId;
        this.className = className;
        this.courseName = courseName;
    }

    public Long getEnrollmentId() {
        return enrollmentId;
    }

    public Long getClassId() {
        return classId;
    }

    public String getClassName() {
        return className;
    }

    public String getCourseName() {
        return courseName;
    }
}