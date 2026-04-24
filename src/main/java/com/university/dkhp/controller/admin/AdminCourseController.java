package com.university.dkhp.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @GetMapping("/check-impact/{id}")
    @ResponseBody // Trả về JSON cho trình duyệt
    public List<Map<String, String>> checkImpact(@PathVariable String id) {
        Set<Course> impacted = adminCourseService.getAllImpactedCourses(id);

        // Chuyển đổi sang List Map để JavaScript dễ đọc
        return impacted.stream().map(c -> {
            Map<String, String> data = new HashMap<>();
            data.put("id", c.getCourseId());
            data.put("name", c.getCourseName());
            return data;
        }).collect(Collectors.toList());
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