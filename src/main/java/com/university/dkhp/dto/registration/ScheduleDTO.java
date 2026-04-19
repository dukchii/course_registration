package com.university.dkhp.dto.registration;

public class ScheduleDTO {
    private Long scheduleId;
    private int dayOfWeek;
    private int startPeriod;
    private int endPeriod;
    private String type;      // THEORY hoặc PRACTICE
    private String groupName; // Ví dụ: "Nhóm TH 1"
	public Long getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(Long scheduleId) {
		this.scheduleId = scheduleId;
	}
	public int getDayOfWeek() {
		return dayOfWeek;
	}
	public void setDayOfWeek(int dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
	}
	public int getStartPeriod() {
		return startPeriod;
	}
	public void setStartPeriod(int startPeriod) {
		this.startPeriod = startPeriod;
	}
	public int getEndPeriod() {
		return endPeriod;
	}
	public void setEndPeriod(int endPeriod) {
		this.endPeriod = endPeriod;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

}