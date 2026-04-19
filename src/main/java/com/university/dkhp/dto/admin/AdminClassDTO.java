package com.university.dkhp.dto.admin;

public class AdminClassDTO {

    private Long classId;
    private String className;
    private String courseName;
    private String majorId;
    private String majorName;
    private String trainingType;
    private String instructorName;
    private Integer currentStudents;
    private Integer maxStudents;
    private Integer semesterId;
    private String courseMajorName;
    public AdminClassDTO(
            Long classId,
            String className,
            String courseName,
            String majorId,
            String majorName,
            String trainingType,
            String instructorName,
            Integer currentStudents,
            Integer maxStudents,
            Integer semesterId,
            String courseMajorName
    ) {
        this.classId = classId;
        this.className = className;
        this.courseName = courseName;
        this.majorId = majorId;
        this.majorName = majorName;
        this.trainingType = trainingType;
        this.instructorName = instructorName;
        this.currentStudents = currentStudents;
        this.maxStudents = maxStudents;
        this.semesterId = semesterId;
        this.courseMajorName = courseMajorName;
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

    public String getMajorId() {
        return majorId;
    }

    public String getMajorName() {
        return majorName;
    }

    public String getInstructorName() {
        return instructorName;
    }

    public Integer getSemesterId() {
        return semesterId;
    }

    public Integer getCurrentStudents() {
        return currentStudents;
    }

    public Integer getMaxStudents() {
        return maxStudents;
    }

    public String getTrainingType() {
        return trainingType;
    }

    public void setTrainingType(String trainingType) {
        this.trainingType = trainingType;
    }

	public String getCourseMajorName() { return courseMajorName; }
    public void setCourseMajorName(String courseMajorName) { this.courseMajorName = courseMajorName; }
}