package com.university.dkhp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.Enrollment;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, Long> {
    // 1. Dùng cho Admin: Xem danh sách sinh viên trong 1 lớp
	List<Enrollment> findByClassesClassId(Long classId);
	// Tìm danh sách đăng ký dựa trên ID sinh viên và ID học kỳ
    List<Enrollment> findByStudentStudentIdAndClassesSemesterSemesterId(String studentId, Integer semesterId);
    // 2. Dùng cho Sinh viên: Xem danh sách các môn MÌNH đã đăng ký
    List<Enrollment> findByStudentStudentId(String studentId);
    // 3. Kiểm tra sinh viên đã hoàn thành môn tiên quyết chưa
    @Query("SELECT COUNT(e) > 0 FROM Enrollment e " +
            "WHERE e.student.studentId = :sId " +
            "AND e.classes.course.courseId = :cId " +
            "AND e.classes.status <> 'CANCELLED'")
     boolean hasPassedCourse(@Param("sId") String sId, @Param("cId") String cId);
}