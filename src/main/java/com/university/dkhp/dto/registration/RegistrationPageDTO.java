package com.university.dkhp.dto.registration;

import java.util.List;

public class RegistrationPageDTO {

    private boolean registrationOpen;
    private boolean summerSemester;

    private Integer semesterId;
    private String semesterName;

    private int currentSemRank;

    private String warningMessage;

    private StudentDTO student;

    private List<CourseGroupDTO> newCourses;
    private List<CourseGroupDTO> retryCourses;
    private List<CourseGroupDTO> upgradeCourses;

    private List<EnrollmentDTO> registeredEnrollments;

    // dùng cho JS timetable
    private List<EnrollmentDTO> registeredSafe;
    private List<CourseGroupDTO> recommendedCourses;
    private List<ClassDTO> allClasses;
    private List<SemesterDTO> allSemesters;
	public boolean isRegistrationOpen() {
		return registrationOpen;
	}

	public void setRegistrationOpen(boolean registrationOpen) {
		this.registrationOpen = registrationOpen;
	}

	public boolean isSummerSemester() {
		return summerSemester;
	}

	public void setSummerSemester(boolean summerSemester) {
		this.summerSemester = summerSemester;
	}

	public Integer getSemesterId() {
		return semesterId;
	}

	public void setSemesterId(Integer semesterId) {
		this.semesterId = semesterId;
	}

	public String getSemesterName() {
		return semesterName;
	}

	public void setSemesterName(String semesterName) {
		this.semesterName = semesterName;
	}

	public int getCurrentSemRank() {
		return currentSemRank;
	}

	public void setCurrentSemRank(int currentSemRank) {
		this.currentSemRank = currentSemRank;
	}

	public String getWarningMessage() {
		return warningMessage;
	}

	public void setWarningMessage(String warningMessage) {
		this.warningMessage = warningMessage;
	}

	public StudentDTO getStudent() {
		return student;
	}

	public void setStudent(StudentDTO student) {
		this.student = student;
	}

	public List<CourseGroupDTO> getNewCourses() {
		return newCourses;
	}

	public void setNewCourses(List<CourseGroupDTO> newCourses) {
		this.newCourses = newCourses;
	}

	public List<CourseGroupDTO> getRetryCourses() {
		return retryCourses;
	}

	public void setRetryCourses(List<CourseGroupDTO> retryCourses) {
		this.retryCourses = retryCourses;
	}

	public List<CourseGroupDTO> getUpgradeCourses() {
		return upgradeCourses;
	}

	public void setUpgradeCourses(List<CourseGroupDTO> upgradeCourses) {
		this.upgradeCourses = upgradeCourses;
	}

	public List<EnrollmentDTO> getRegisteredEnrollments() {
		return registeredEnrollments;
	}
	public EnrollmentDTO findRegisteredByCourseId(String courseId) {
	    if (registeredEnrollments == null) {
			return null;
		}
	    return registeredEnrollments.stream()
	        .filter(e -> e.getCourseId().equals(courseId))
	        .findFirst()
	        .orElse(null);
	}
	public boolean isSpecificClassRegistered(Long classId) {
	    if (registeredEnrollments == null) {
			return false;
		}
	    return registeredEnrollments.stream()
	            .anyMatch(e -> e.getClassId().equals(classId));
	}

	public EnrollmentDTO getRegisteredEnrollmentByCourseId(String courseId) {
	    // Kiểm tra cả 2 danh sách để đảm bảo không bị sót dữ liệu
	    List<EnrollmentDTO> source = (registeredSafe != null) ? registeredSafe : registeredEnrollments;

	    if (source == null || courseId == null) {
			return null;
		}

	    return source.stream()
	            .filter(e -> courseId.equals(e.getCourseId()))
	            .findFirst()
	            .orElse(null);
	}
	public void setRegisteredEnrollments(List<EnrollmentDTO> registeredEnrollments) {
		this.registeredEnrollments = registeredEnrollments;
	}

	public List<EnrollmentDTO> getRegisteredSafe() {
		return registeredSafe;
	}

	public void setRegisteredSafe(List<EnrollmentDTO> registeredSafe) {
		this.registeredSafe = registeredSafe;
	}

	public List<ClassDTO> getAllClasses() {
		return allClasses;
	}

	public void setAllClasses(List<ClassDTO> allClasses) {
		this.allClasses = allClasses;
	}
	public List<SemesterDTO> getAllSemesters() {
	    return allSemesters;
	}

	public void setAllSemesters(List<SemesterDTO> allSemesters) {
	    this.allSemesters = allSemesters;
	}

	public List<CourseGroupDTO> getRecommendedCourses() {
		return recommendedCourses;
	}

	public void setRecommendedCourses(List<CourseGroupDTO> recommendedCourses) {
		this.recommendedCourses = recommendedCourses;
	}
}