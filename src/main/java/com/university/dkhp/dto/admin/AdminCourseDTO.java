package com.university.dkhp.dto.admin;

public class AdminCourseDTO {

    private String courseId;
    private String courseName;
    private Integer credits;
    private String majorName;
    private String majorId;
    private String description;

    public AdminCourseDTO(String courseId,
                          String courseName,
                          Integer credits,
                          String majorName,
                          String majorId,
                          String description) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.credits = credits;
        this.majorName = majorName;
        this.majorId = majorId;
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

	public String getMajorId() {
		return majorId;
	}

	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public void setCredits(Integer credits) {
		this.credits = credits;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}