package com.university.dkhp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Lock;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.university.dkhp.dto.admin.AdminClassDTO;
import com.university.dkhp.entity.Classes;

import jakarta.persistence.LockModeType;


@Repository
public interface ClassesRepository extends JpaRepository<Classes, Long> {
	List<Classes> findByTrainingType(String trainingType);
    // Lấy danh sách lớp học của học kỳ đang active và theo hệ đào tạo
	@Query("""
	        SELECT c FROM Classes c
	        WHERE c.semester.semesterId = :semId
	        AND c.status <> 'CANCELLED'
	        AND c.course.recommendedSemester <= :maxSem
	        AND MOD(c.course.recommendedSemester, 2) = MOD(:maxSem, 2)
	        AND c.trainingType = :trainingType
	    """)
	    List<Classes> findEligibleClasses(
	        @Param("maxSem") int maxSem,
	        @Param("semId") int semId,
	        @Param("trainingType") String trainingType
	    );
	// khóa đăng ký khi có người đang đăng ký (đảm bảo tại một thời điểm chỉ một người được thay đổi sĩ số lớp)
	@Lock(LockModeType.PESSIMISTIC_WRITE)
    @Query("SELECT c FROM Classes c WHERE c.classId = :id")
    Optional<Classes> findByIdWithLock(@Param("id") Long id);
	// tìm lớp đang active cho admin
	@Query("SELECT c FROM Classes c WHERE c.semester.isActive = true AND c.status = 'OPEN'")
    List<Classes> findActiveClasses();
	// Tìm các lớp theo trạng thái
	List<Classes> findByStatus(String status);
	// tìm môn theo kỳ
	List<Classes> findAllBySemesterSemesterIdAndTrainingTypeIgnoreCase(Integer semesterId, String trainingType);
	// tìm lớp cho admin dto load trang nhanh hơn
	@Query("""
		    SELECT DISTINCT new com.university.dkhp.dto.admin.AdminClassDTO(
		        c.classId,
		        c.className,
		        course.courseName,
		        m.majorId,
		        m.majorName,
		        c.trainingType,
		        instructor.fullName,
		        c.currentStudents,
		        c.maxStudents,
		        semester.semesterId,
		        m.majorName
		    )
		    FROM Classes c
		    LEFT JOIN c.course course
		    LEFT JOIN course.majorCourses mc
		    LEFT JOIN mc.major m
		    LEFT JOIN c.instructor instructor
		    LEFT JOIN c.semester semester
		    ORDER BY c.classId DESC
		""")
		List<AdminClassDTO> findClassesForAdmin();
}