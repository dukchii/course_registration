package com.university.dkhp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.Instructor;

@Repository
public interface InstructorRepository extends JpaRepository<Instructor, String> {
    // JpaRepository đã có sẵn findAll() để lấy toàn bộ giảng viên
}