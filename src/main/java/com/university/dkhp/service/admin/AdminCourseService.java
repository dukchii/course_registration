package com.university.dkhp.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.university.dkhp.dto.admin.AdminCourseDTO;
import com.university.dkhp.entity.Course;
import com.university.dkhp.repository.CourseRepository;

@Service
public class AdminCourseService {

    private final CourseRepository courseRepository;

    public AdminCourseService(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    public List<AdminCourseDTO> getCoursesForAdmin() {
        return courseRepository.findCoursesForAdmin();
    }
    public void saveCourse(Course course) {
        courseRepository.save(course);
    }

    public void deleteCourse(String courseId) {
        if (courseRepository.existsById(courseId)) {
            courseRepository.deleteById(courseId);
        }
    }
}