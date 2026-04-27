package com.university.dkhp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.Major;

@Repository
public interface MajorRepository extends JpaRepository<Major, String> {
	
}
