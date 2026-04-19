package com.university.dkhp.service.course;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.university.dkhp.entity.Course;
import com.university.dkhp.repository.CourseRepository;

@Service
public class CourseService {

    private final CourseRepository courseRepository;

    public CourseService(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    /**
     * Lấy danh sách môn học tránh N+1
     */
    @Transactional(readOnly = true)
    public List<Course> getAllCourses() {
        return courseRepository.findAllWithMajor();
    }

    // lưu môn học
    public void save(Course course) {
        courseRepository.save(course);
    }

    // xóa môn học
    public void delete(String id) {
    	if (courseRepository.existsById(id)) {
            courseRepository.deleteById(id);
        }
    }
}