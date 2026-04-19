package com.university.dkhp.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "courses")
@NoArgsConstructor
@AllArgsConstructor
public class Course {
    @Id
    private String courseId; // Ví dụ: CS102, EN201

    @Column(name = "course_name")
    private String courseName;
    @Column(name = "recommended_semester")
    private Integer recommendedSemester;
    private int credits; // Số tín chỉ
    private String description;
    // Một môn học có thể có nhiều lớp học (classes)
    @OneToMany(mappedBy = "course")
    private List<Classes> classes;
    @ManyToMany
    @JoinTable(
        name = "prerequisites", // Tên bảng trung gian vừa tạo ở Bước 1
        joinColumns = @JoinColumn(name = "course_id"),
        inverseJoinColumns = @JoinColumn(name = "pre_course_id")
    )
    private List<Course> prerequisites;
    @ManyToOne
    @JoinTable(
        name = "major_courses",
        joinColumns = @JoinColumn(name = "course_id"),
        inverseJoinColumns = @JoinColumn(name = "major_id")
    )
    private Major major;

    @OneToMany(mappedBy = "course")
    private List<MajorCourse> majorCourses;

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

	public int getCredits() {
		return credits;
	}

	public void setCredits(int credits) {
		this.credits = credits;
	}

	public List<Classes> getSections() {
		return classes;
	}

	public void setSections(List<Classes> classes) {
		this.classes = classes;
	}

	public Integer getRecommendedSemester() {
		return recommendedSemester;
	}

	public void setRecommendedSemester(Integer recommendedSemester) {
		this.recommendedSemester = recommendedSemester;
	}

	public List<Classes> getClasses() {
		return classes;
	}

	public void setClasses(List<Classes> classes) {
		this.classes = classes;
	}

	public List<Course> getPrerequisites() {
		return prerequisites;
	}

	public void setPrerequisites(List<Course> prerequisites) {
		this.prerequisites = prerequisites;
	}

	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<MajorCourse> getMajorCourses() {
		return majorCourses;
	}

	public void setMajorCourses(List<MajorCourse> majorCourses) {
		this.majorCourses = majorCourses;
	}
}