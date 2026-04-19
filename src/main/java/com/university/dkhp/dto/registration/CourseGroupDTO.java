package com.university.dkhp.dto.registration;

import java.util.List;

public class CourseGroupDTO {
    private String courseId;
    private String courseName;
    private Integer credits;
    private String prerequisite;
    private String prerequisiteName;
    private List<ClassDTO> classes;
    private int recommendedSemester;
    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Integer getCredits() {
        return credits;
    }

    public void setCredits(Integer credits) {
        this.credits = credits;
    }

    public String getPrerequisite() {
        return prerequisite;
    }

    public void setPrerequisite(String prerequisite) {
        this.prerequisite = prerequisite;
    }

    public List<ClassDTO> getClasses() {
        return classes;
    }

    public void setClasses(List<ClassDTO> classes) {
        this.classes = classes;
    }

	public String getPrerequisiteName() {
		return prerequisiteName;
	}

	public void setPrerequisiteName(String prerequisiteName) {
		this.prerequisiteName = prerequisiteName;
	}

	public int getRecommendedSemester() {
		return recommendedSemester;
	}

	public void setRecommendedSemester(int recommendedSemester) {
		this.recommendedSemester = recommendedSemester;
	}
}