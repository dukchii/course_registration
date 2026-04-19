package com.university.dkhp.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.university.dkhp.entity.Course;
import com.university.dkhp.repository.MajorRepository;
import com.university.dkhp.service.admin.AdminCourseService;

@Controller
@RequestMapping("/admin/courses")
public class AdminCourseController {

    private final AdminCourseService adminCourseService;
    private final MajorRepository majorRepository;

    public AdminCourseController(AdminCourseService adminCourseService,
                                 MajorRepository majorRepository) {
        this.adminCourseService = adminCourseService;
        this.majorRepository = majorRepository;
    }

    @GetMapping
    public String listCourses(Model model) {

        model.addAttribute("courses",
                adminCourseService.getCoursesForAdmin());

        model.addAttribute("majors",
                majorRepository.findAll());

        return "admin/admin-courses";
    }

    @PostMapping("/save")
    public String saveCourse(@ModelAttribute Course course) {
        adminCourseService.saveCourse(course);
        return "redirect:/admin/courses";
    }

    @GetMapping("/delete/{id}")
    public String deleteCourse(@PathVariable String id) {
        adminCourseService.deleteCourse(id);
        return "redirect:/admin/courses";
    }
}