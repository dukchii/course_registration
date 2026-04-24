package com.university.dkhp.service.admin;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

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

    public Set<Course> getAllImpactedCourses(String courseId) {
        Set<Course> impactedCourses = new HashSet<>();
        findImpactedRecursive(courseId, impactedCourses);
        return impactedCourses;
    }

    private void findImpactedRecursive(String courseId, Set<Course> result) {
    	// BƯỚC 1: Tìm các môn coi môn hiện tại là tiên quyết
        List<Course> dependents = courseRepository.findByPrerequisites_CourseId(courseId);

        for (Course dep : dependents) {
        	// BƯỚC 2: Điều kiện dừng & Kiểm tra trùng lặp
            if (!result.contains(dep)) {
                result.add(dep); // Lưu lại môn bị ảnh hưởng
                
                // Gọi đệ quy để tìm cấp tiếp theo (cháu, chắt...)
                findImpactedRecursive(dep.getCourseId(), result);
            }
        }
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