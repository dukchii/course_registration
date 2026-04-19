package com.university.dkhp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.Room;

@Repository
public interface RoomRepository extends JpaRepository<Room, Long> {
    // Tự động có các hàm: findAll(), save(), deleteById()...
}