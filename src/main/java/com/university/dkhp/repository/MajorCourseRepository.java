package com.university.dkhp.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.university.dkhp.entity.MajorCourse;

@Repository
public interface MajorCourseRepository extends JpaRepository<MajorCourse, Long> {

	List<MajorCourse> findByCourseCourseId(String courseId);
}