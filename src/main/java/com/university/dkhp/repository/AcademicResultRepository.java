package com.university.dkhp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.AcademicResult;

@Repository
public interface AcademicResultRepository extends JpaRepository<AcademicResult, Long> {
    // Tìm danh sách kết quả học tập của 1 sinh viên theo mã số
    List<AcademicResult> findByStudentStudentId(String studentId);

    // Tìm các môn đã đạt (PASSED) của sinh viên
    List<AcademicResult> findByStudentStudentIdAndStatus(String studentId, String status);
}