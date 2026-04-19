package com.university.dkhp.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.university.dkhp.entity.Semester;
import com.university.dkhp.repository.MajorRepository;
import com.university.dkhp.repository.SemesterRepository;
import com.university.dkhp.service.admin.AdminStudentService;

@Controller
@RequestMapping("/admin")
public class AdminStudentController {

    private final AdminStudentService adminStudentService;
    private final MajorRepository majorRepository;
    private final SemesterRepository semesterRepository;

    public AdminStudentController(
            AdminStudentService adminStudentService,
            MajorRepository majorRepository,
            SemesterRepository semesterRepository) {
        this.adminStudentService = adminStudentService;
        this.majorRepository = majorRepository;
        this.semesterRepository = semesterRepository;
    }

    /**
     * =====================================================
     * 1. DANH SÁCH SINH VIÊN
     * =====================================================
     */
    @GetMapping("/students")
    public String studentList(Model model) {

        Semester currentSemester = semesterRepository
                .findByIsActiveTrue()
                .orElse(null);

        String currentSemesterName = currentSemester != null
                ? currentSemester.getTerm() + " (" + currentSemester.getYear() + ")"
                : "Chưa thiết lập";

        model.addAttribute("students",
                adminStudentService.getStudentsForAdmin());

        model.addAttribute("majors",
                majorRepository.findAll()
                        .stream()
                        .map(m -> m.getMajorName())
                        .toList());

        model.addAttribute("currentSemesterName", currentSemesterName);

        return "admin/admin-students";
    }

    /**
     * =====================================================
     * 2. HỦY ĐĂNG KÝ HỌC PHẦN
     * =====================================================
     */
    @PostMapping("/cancel-enrollment")
    public String cancelEnrollment(@RequestParam Long enrollmentId) {

        adminStudentService.cancelEnrollment(enrollmentId);

        return "redirect:/admin/students";
    }
}