package com.university.dkhp.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "majors")
public class Major {

    @Id
    private String majorId;

    private String majorName;

    @OneToMany(mappedBy = "major")
    private List<Student> students;
    @OneToMany(mappedBy = "major")
    private List<MajorCourse> majorCourses;
	public String getMajorId() {
		return majorId;
	}

	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public List<MajorCourse> getMajorCourses() {
		return majorCourses;
	}

	public void setMajorCourses(List<MajorCourse> majorCourses) {
		this.majorCourses = majorCourses;
	}
}