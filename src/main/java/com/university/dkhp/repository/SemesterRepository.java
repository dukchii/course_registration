package com.university.dkhp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.Semester;

import jakarta.transaction.Transactional;

@Repository
public interface SemesterRepository extends JpaRepository<Semester, Integer> {
	// Tìm học kỳ đang mở đăng ký
    Optional<Semester> findByIsRegistrationOpenTrue();

    // Tìm học kỳ đang được đánh dấu là Active
    Optional<Semester> findByIsActiveTrue();

    @Modifying
    @Transactional
    @Query("UPDATE Semester s SET s.isActive = false")
    void disableAllSemesters();
    // Lấy danh sách kỳ học sắp xếp mới nhất lên đầu
    @Query("SELECT s FROM Semester s ORDER BY s.year DESC, s.term DESC")
    List<Semester> findAllOrderByLatest();
}