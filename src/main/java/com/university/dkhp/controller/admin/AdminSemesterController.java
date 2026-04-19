package com.university.dkhp.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.university.dkhp.entity.Semester;
import com.university.dkhp.service.admin.AdminSemesterService;

@Controller
@RequestMapping("/admin/semesters")
public class AdminSemesterController {

    @Autowired
    private AdminSemesterService adminSemesterService;

    // =====================================================
    // 1. LIST SEMESTERS
    // =====================================================
    @GetMapping
    public String listSemesters(Model model) {

        model.addAttribute("semesters", adminSemesterService.getAllSemesters());
        model.addAttribute("activeSemester", adminSemesterService.getActiveSemester());

        return "admin/admin-semesters";
    }

    // =====================================================
    // 2. ACTIVATE SEMESTER
    // =====================================================
    @PostMapping("/activate/{id}")
    public String activateSemester(@PathVariable Integer id,
                                   RedirectAttributes ra) {
        try {
        	adminSemesterService.activateSemester(id);
            ra.addFlashAttribute("success", "Đã kích hoạt học kỳ!");
        } catch (Exception e) {
            ra.addFlashAttribute("error", e.getMessage());
        }
        return "redirect:/admin/semesters";
    }

    // =====================================================
    // 3. ADD SEMESTER
    // =====================================================
    @PostMapping("/add")
    public String addSemester(@ModelAttribute Semester semester,
                              RedirectAttributes ra) {

        try {
        	adminSemesterService.addSemester(semester);
            ra.addFlashAttribute("success", "Thêm học kỳ thành công!");
        } catch (Exception e) {
            ra.addFlashAttribute("error", e.getMessage());
        }

        return "redirect:/admin/semesters";
    }

    // =====================================================
    // 4. DELETE SEMESTER
    // =====================================================
    @GetMapping("/delete/{id}")
    public String deleteSemester(@PathVariable Integer id,
                                 RedirectAttributes ra) {

        try {
        	adminSemesterService.deleteSemester(id);
            ra.addFlashAttribute("success", "Đã xóa học kỳ!");
        } catch (Exception e) {
            ra.addFlashAttribute("error", "Không thể xóa: " + e.getMessage());
        }

        return "redirect:/admin/semesters";
    }

    // =====================================================
    // 5. TOGGLE REGISTRATION
    // =====================================================
    @PostMapping("/toggle-registration/{id}")
    public String toggleRegistration(@PathVariable Integer id,
                                     RedirectAttributes ra) {

        try {
        	adminSemesterService.toggleRegistration(id);
            ra.addFlashAttribute("success", "Cập nhật trạng thái đăng ký thành công!");
        } catch (Exception e) {
            ra.addFlashAttribute("error", e.getMessage());
        }

        return "redirect:/admin/semesters";
    }
}