package com.university.dkhp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.university.dkhp.entity.ClassSchedule;

@Repository
public interface ScheduleRepository extends JpaRepository<ClassSchedule, Long> {

    /**
     * Kiểm tra trùng lịch Giảng viên (Dựa trên giảng viên của lớp học)
     * Logic Overlap: (Bắt đầu mới <= Kết thúc cũ) AND (Kết thúc mới >= Bắt đầu cũ)
     */
    @Query("""
            SELECT COUNT(s) > 0 FROM ClassSchedule s
            WHERE s.classes.instructor.instructorId = :teacherId
            AND s.dayOfWeek = :day
            AND :start <= s.endPeriod
            AND :end >= s.startPeriod
            """)
    boolean existsTeacherConflict(@Param("teacherId") String teacherId,
                                  @Param("day") int day,
                                  @Param("start") int start,
                                  @Param("end") int end);

    /**
     * Kiểm tra trùng lịch Phòng học
     */
    @Query("""
            SELECT COUNT(s) > 0 FROM ClassSchedule s
            WHERE s.room.roomId = :roomId
            AND s.dayOfWeek = :day
            AND :start <= s.endPeriod
            AND :end >= s.startPeriod
            """)
    boolean existsRoomConflict(@Param("roomId") Long roomId,
                                @Param("day") int day,
                                @Param("start") int start,
                                @Param("end") int end);


    default boolean existsByInstructorConflict(String instructorId, int day, int start, int end) {
        return existsTeacherConflict(instructorId, day, start, end);
    }

    default boolean existsByRoomConflict(Long roomId, int day, int start, int end) {
        return existsRoomConflict(roomId, day, start, end);
    }
}