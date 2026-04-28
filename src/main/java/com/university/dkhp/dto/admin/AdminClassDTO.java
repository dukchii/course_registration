package com.university.dkhp.dto.admin;

public class AdminClassDTO {

	private Long classId;
    private String className;
    private String courseId; 
    private String courseName;
    private String majorId;
    private String trainingType;
    private String instructorName;
    private Integer currentStudents;
    private Integer maxStudents;
    private Integer semesterId;
    private String courseMajorName; // "CNTT" hoặc "KHMT"
    private String selectedMajorId;

    public AdminClassDTO(Long classId, String className, String courseId, String courseName, 
	            String majorId, String trainingType, String instructorName, 
	            Integer currentStudents, Integer maxStudents, Integer semesterId, 
	            String courseMajorName) {
	this.classId = classId;
	this.className = className;
	this.courseId = courseId;
	this.courseName = courseName;
	this.majorId = majorId;
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
    public String getCourseId() { return courseId; }
    
    public String getCourseName() {
        return courseName;
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

	public String getMajorId() {
		return majorId;
	}

	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}

	public void setClassId(Long classId) {
		this.classId = classId;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public void setInstructorName(String instructorName) {
		this.instructorName = instructorName;
	}

	public void setCurrentStudents(Integer currentStudents) {
		this.currentStudents = currentStudents;
	}

	public void setMaxStudents(Integer maxStudents) {
		this.maxStudents = maxStudents;
	}

	public void setSemesterId(Integer semesterId) {
		this.semesterId = semesterId;
	}

	public String getSelectedMajorId() {
		return selectedMajorId;
	}

	public void setSelectedMajorId(String selectedMajorId) {
		this.selectedMajorId = selectedMajorId;
	}
}