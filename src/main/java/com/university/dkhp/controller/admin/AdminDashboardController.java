package com.university.dkhp.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.User;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.MajorRepository;
import com.university.dkhp.repository.SemesterRepository;
import com.university.dkhp.repository.UserRepository;
import com.university.dkhp.service.RegistrationService;
import com.university.dkhp.service.admin.AdminClassService;
import com.university.dkhp.service.admin.AdminDashboardService;

@Controller
@RequestMapping("/admin")
public class AdminDashboardController {

    @Autowired private RegistrationService registrationService;
    @Autowired private UserRepository userRepository;
    @Autowired private MajorRepository majorRepository;
    @Autowired private SemesterRepository semesterRepository;
    @Autowired private ClassesRepository classesRepository;
    @Autowired private AdminClassService classService;
    @Autowired private AdminDashboardService dashboardService;

    @GetMapping("/dashboard")
    public String showDashboard(Model model, Authentication authentication) {

        User user = userRepository.findByUsername(authentication.getName());
        model.addAttribute("currentUser", user);

        List<Classes> allClass = registrationService.getAllClasses();

        // 👉 delegate toàn bộ logic sang service
        model.addAttribute("totalEnrolled",
                dashboardService.totalEnrolled(allClass));

        model.addAttribute("confirmedCount",
                dashboardService.confirmedCount(allClass));

        model.addAttribute("cancelledClasses",
                dashboardService.cancelledCount(allClass));

        model.addAttribute("lowAttendanceCount",
                dashboardService.lowAttendanceCount(allClass));

        model.addAttribute("allMajors", majorRepository.findAll());
        model.addAttribute("semesters", semesterRepository.findAll());
        model.addAttribute("class", allClass);

        return "admin/admin-dashboard";
    }

    @GetMapping("/confirm/{id}")
    public String confirmClass(@PathVariable Long id) {

        classesRepository.findById(id).ifPresent(c -> {
            if ((double) c.getEnrollments().size() / c.getMaxStudents() >= 0.4) {
                c.setStatus("CONFIRMED");
                classesRepository.save(c);
            }
        });

        return "redirect:/admin/dashboard";
    }

    @GetMapping("/cancel/{id}")
    public String cancelClass(@PathVariable Long id) {
        classService.cancelClass(id);
        return "redirect:/admin/dashboard";
    }

    @GetMapping("/merge")
    public String mergeClasses(@RequestParam Long sourceId,
                               @RequestParam Long targetId) {
    	classService.mergeClasses(sourceId, targetId);
        return "redirect:/admin/dashboard";
    }
}