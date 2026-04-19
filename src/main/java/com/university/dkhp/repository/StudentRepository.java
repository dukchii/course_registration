package com.university.dkhp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.Student;


@Repository
public interface StudentRepository extends JpaRepository<Student, String> {

    Optional<Student> findByStudentId(String studentId);

    /**
     * Load toàn bộ:
     * Student
     * -> User
     * -> Enrollments
     * -> Classes
     * -> Course
     */
    @Query("""
        SELECT DISTINCT s
        FROM Student s
        LEFT JOIN FETCH s.user u
        LEFT JOIN FETCH s.enrollments e
        LEFT JOIN FETCH e.classes c
        LEFT JOIN FETCH c.course
        LEFT JOIN FETCH s.major
        ORDER BY s.studentId
    """)
    List<Student> findAllStudentsForAdmin();
}