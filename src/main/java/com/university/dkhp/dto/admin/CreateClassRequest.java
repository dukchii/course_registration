package com.university.dkhp.dto.admin;

import java.util.List;

import lombok.Data;

@Data
public class CreateClassRequest {
    private String courseId;
    private String className;
    private String instructorId;
    private String trainingType;
    private String theoryDay;
    private String rawSchedules; // Tiết học (ví dụ: 1-3)
    private String theoryRoomId;
    private Integer max; // Sĩ số tối đa

    // Danh sách dành cho nhóm thực hành
    private List<String> labDays;
    private List<String> labPeriods;
    private List<String> labRoomIds;
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getInstructorId() {
		return instructorId;
	}
	public void setInstructorId(String instructorId) {
		this.instructorId = instructorId;
	}
	public String getTrainingType() {
		return trainingType;
	}
	public void setTrainingType(String trainingType) {
		this.trainingType = trainingType;
	}
	public String getTheoryDay() {
		return theoryDay;
	}
	public void setTheoryDay(String theoryDay) {
		this.theoryDay = theoryDay;
	}
	public String getRawSchedules() {
		return rawSchedules;
	}
	public void setRawSchedules(String rawSchedules) {
		this.rawSchedules = rawSchedules;
	}
	public String getTheoryRoomId() {
		return theoryRoomId;
	}
	public void setTheoryRoomId(String theoryRoomId) {
		this.theoryRoomId = theoryRoomId;
	}
	public Integer getMax() {
		return max;
	}
	public void setMax(Integer max) {
		this.max = max;
	}
	public List<String> getLabDays() {
		return labDays;
	}
	public void setLabDays(List<String> labDays) {
		this.labDays = labDays;
	}
	public List<String> getLabPeriods() {
		return labPeriods;
	}
	public void setLabPeriods(List<String> labPeriods) {
		this.labPeriods = labPeriods;
	}
	public List<String> getLabRoomIds() {
		return labRoomIds;
	}
	public void setLabRoomIds(List<String> labRoomIds) {
		this.labRoomIds = labRoomIds;
	}
}