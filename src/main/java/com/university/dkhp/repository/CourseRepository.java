package com.university.dkhp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.university.dkhp.dto.admin.AdminCourseDTO;
import com.university.dkhp.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, String> {
	@Query("SELECT DISTINCT c FROM Course c")
    List<Course> findAllDistinct();

	// Tìm kiếm môn học theo tên hoặc mã
    List<Course> findByCourseNameContainingIgnoreCase(String keyword);
    // Tìm các môn có chứa mã môn tiên quyết trong danh sách prerequisites
    List<Course> findByPrerequisites_CourseId(String courseId);
    // Lấy danh sách môn học theo ngành
    List<Course> findByMajorMajorId(String majorId);

    /**
     * Load môn học + ngành cùng lúc
     * tránh N+1 query khi render view
     */
    @Query("""
    	    SELECT DISTINCT c
    	    FROM Course c
    	    LEFT JOIN FETCH c.majorCourses mc
    	    LEFT JOIN FETCH mc.major
    	    ORDER BY c.courseId
    	""")
    	List<Course> findAllWithMajor();

    @Query("""
    	    SELECT new com.university.dkhp.dto.admin.AdminCourseDTO(
    	        c.courseId,
    	        c.courseName,
    	        c.credits,
    	        MAX(m.majorName),
    	        MAX(m.majorId), 
    	        c.description
    	    )
    	    FROM Course c
    	    LEFT JOIN MajorCourse mc ON c.courseId = mc.course.courseId
    	    LEFT JOIN Major m ON mc.major.majorId = m.majorId
    	    GROUP BY c.courseId, c.courseName, c.credits, c.description
    		""")
    List<AdminCourseDTO> findCoursesForAdmin();
}
