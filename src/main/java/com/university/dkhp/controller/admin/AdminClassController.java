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

import com.university.dkhp.dto.admin.CreateClassRequest;
import com.university.dkhp.repository.CourseRepository;
import com.university.dkhp.repository.InstructorRepository;
import com.university.dkhp.repository.MajorRepository;
import com.university.dkhp.repository.RoomRepository;
import com.university.dkhp.repository.SemesterRepository;
import com.university.dkhp.service.admin.AdminClassService;

@Controller
@RequestMapping("/admin")
public class AdminClassController {

    @Autowired private MajorRepository majorRepository;
    @Autowired private AdminClassService adminClassService;
    @Autowired private CourseRepository courseRepository;
    @Autowired private InstructorRepository instructorRepository;
    @Autowired private RoomRepository roomRepository;
    @Autowired private SemesterRepository semesterRepository;

    @GetMapping("/classes")
    public String classList(Model model) {

        model.addAttribute("classes", adminClassService.getClassesForAdmin());

        model.addAttribute("courses", courseRepository.findCoursesForAdmin());
        model.addAttribute("instructor", instructorRepository.findAll());
        model.addAttribute("rooms", roomRepository.findAll());
        model.addAttribute("semesters", semesterRepository.findAll());
        model.addAttribute("allMajors", majorRepository.findAll());
        return "admin/admin-classes";
    }

    @PostMapping("/create")
    public String createClass(@ModelAttribute CreateClassRequest req,
                              RedirectAttributes redirectAttributes) {

        try {
        	adminClassService.createClass(req);
            return "redirect:/admin/classes?success=true";
        } catch (Exception e) {
            return "redirect:/admin/classes?error=" + e.getMessage();
        }
    }

    @GetMapping("/classes/close/{id}")
    public String closeClass(@PathVariable Long id) {
    	adminClassService.closeRegistration(id);
        return "redirect:/admin/classes";
    }
}