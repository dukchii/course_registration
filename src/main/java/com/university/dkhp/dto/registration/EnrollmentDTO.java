package com.university.dkhp.dto.registration;

import java.util.List;

public class EnrollmentDTO {

    private Long classId;
    private String courseId;
    private String courseName;
    private String className;
    private List<ScheduleDTO> schedules;
    private Long registeredPracticeId;
    private String instructorName;
    public Long getClassId() {
        return classId;
    }

    public void setClassId(Long classId) {
        this.classId = classId;
    }

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
    public Long getRegisteredPracticeId() {
        return registeredPracticeId;
    }

    public void setRegisteredPracticeId(Long registeredPracticeId) {
        this.registeredPracticeId = registeredPracticeId;
    }
    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public List<ScheduleDTO> getSchedules() {
        return schedules;
    }

    public void setSchedules(List<ScheduleDTO> schedules) {
        this.schedules = schedules;
    }

	public String getInstructorName() {
		return instructorName;
	}

	public void setInstructorName(String instructorName) {
		this.instructorName = instructorName;
	}
}