package com.university.dkhp.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.university.dkhp.entity.Classes;

@Service
public class AdminDashboardService {

    /**
     * Tính tổng số sinh viên đã đăng ký
     */
    public long totalEnrolled(List<Classes> classes) {
        return classes.stream()
                .mapToLong(c -> c.getEnrollments().size())
                .sum();
    }

    /**
     * Số lớp đã xác nhận
     */
    public long confirmedCount(List<Classes> classes) {
        return classes.stream()
                .filter(c -> "CONFIRMED".equalsIgnoreCase(c.getStatus()))
                .count();
    }

    /**
     * Số lớp bị hủy
     */
    public long cancelledCount(List<Classes> classes) {
        return classes.stream()
                .filter(c -> "CANCELLED".equalsIgnoreCase(c.getStatus()))
                .count();
    }

    /**
     * Lớp ít sinh viên (<40%)
     */
    public long lowAttendanceCount(List<Classes> classes) {
        return classes.stream()
                .filter(c -> "OPEN".equalsIgnoreCase(c.getStatus())
                        && c.getEnrollments().size() < c.getMaxStudents() * 0.4)
                .count();
    }
}