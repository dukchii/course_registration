package com.university.dkhp.controller.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.university.dkhp.dto.registration.RegistrationPageDTO;
import com.university.dkhp.entity.Classes;
import com.university.dkhp.entity.Student;
import com.university.dkhp.repository.ClassesRepository;
import com.university.dkhp.repository.UserRepository;
import com.university.dkhp.service.RegistrationService;
import com.university.dkhp.service.view.RegistrationViewService;

@Controller
public class RegistrationController {

    @Autowired
    private RegistrationViewService registrationViewService;
    @Autowired
    private ClassesRepository classesRepository;
    @Autowired
    private RegistrationService registrationService;
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/registration")
    public String showRegistrationPage(
            @RequestParam(required = false) Integer semesterId,
            Authentication authentication,
            Model model) {

        Student student = userRepository
                .findByUsername(authentication.getName())
                .getStudent();

        RegistrationPageDTO dto =
                registrationViewService.buildRegistrationView(student.getStudentId(), semesterId);

        model.addAttribute("data", dto);

        return "student/registration-main";
    }
    @GetMapping("/register/{classId}")
    public String registerClass(
            @PathVariable Long classId,
            @RequestParam(required = false) Long practiceId,
            Authentication authentication,
            RedirectAttributes ra) {
    	// Tìm học kỳ của lớp học này
        Classes cls = classesRepository.findById(classId).orElseThrow();
        if (!cls.getSemester().isRegistrationOpen()) {
            ra.addFlashAttribute("message", "Lỗi: Học kỳ của lớp này đã đóng đăng ký!");
            return "redirect:/registration";
        }
        String studentId = userRepository
                .findByUsername(authentication.getName())
                .getStudent()
                .getStudentId();

        String result = registrationService.registerClass(studentId, classId, practiceId);

        ra.addFlashAttribute(
                "message",
                "SUCCESS".equalsIgnoreCase(result)
                        ? "Đăng ký thành công"
                        : result
        );

        return "redirect:/registration";
    }

    @GetMapping("/cancel/{classId}")
    public String cancelClass(
            @PathVariable Long classId,
            Authentication authentication,
            RedirectAttributes ra) {

        String studentId = userRepository
                .findByUsername(authentication.getName())
                .getStudent()
                .getStudentId();

        registrationService.cancelEnrollment(studentId, classId);

        ra.addFlashAttribute("message", "Đã hủy học phần");

        return "redirect:/registration";
    }

    @GetMapping("/change/{oldClassId}/{newClassId}")
    public String changeClass(
            @PathVariable Long oldClassId,
            @PathVariable Long newClassId,
            @RequestParam(required = false) Long practiceId,
            Authentication authentication,
            RedirectAttributes ra) {

        String studentId = userRepository
                .findByUsername(authentication.getName())
                .getStudent()
                .getStudentId();

        String result = registrationService.changeClass(
                studentId,
                oldClassId,
                newClassId,
                practiceId
        );

        ra.addFlashAttribute(
                "message",
                "SUCCESS".equalsIgnoreCase(result)
                        ? "Đổi lớp thành công"
                        : result
        );

        return "redirect:/registration";
    }
}