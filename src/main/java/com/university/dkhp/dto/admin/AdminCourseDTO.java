package com.university.dkhp.dto.admin;

public class AdminCourseDTO {

    private String courseId;
    private String courseName;
    private Integer credits;
    private String majorName;
    private String description;

    public AdminCourseDTO(String courseId,
                          String courseName,
                          Integer credits,
                          String majorName,
                          String description) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.credits = credits;
        this.majorName = majorName;
        this.description = description;
    }

    public String getCourseId() {
        return courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public Integer getCredits() {
        return credits;
    }

    public String getMajorName() {
        return majorName;
    }

    public String getDescription() {
        return description;
    }
}