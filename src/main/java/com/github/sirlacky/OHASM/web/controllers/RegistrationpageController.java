package com.github.sirlacky.OHASM.web.controllers;

import com.github.sirlacky.OHASM.dtos.RegistrationFormDTO;
import com.github.sirlacky.OHASM.dtos.UserDTO;
import com.github.sirlacky.OHASM.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/register")
public class RegistrationpageController {

    private UserService userService;

    public RegistrationpageController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String prepareRegistrationForm(Model model) {
        model.addAttribute("registrationForm", new RegistrationFormDTO());
        return "registration-page";
    }

    @PostMapping //sprawdzanie czy hasla sa prawidlowe oraz czy uzytkownik juz istnieje
    public String processRegistration(@Valid @ModelAttribute("registrationForm") RegistrationFormDTO form, BindingResult result) {
        if (result.hasErrors()) {
            return "registration-page";
        }
        if (!checkPasswordEquality(form)) {
            result.rejectValue("password", null, "Wrong password, try again");
            return "registration-page";
        }

        if (!checkIsUsernameAvalible(form)) {
            result.rejectValue("username", null, "Username already taken");
            return "registration-page";
        }
        userService.registerUser(form);
        return "redirect:/main";
    }

    private boolean checkIsUsernameAvalible(RegistrationFormDTO form) {
        UserDTO user = userService.findUser(form.getUsername());

        if (user == null) {
            return true;
        }
        return false;
    }

    private boolean checkPasswordEquality(RegistrationFormDTO form) {
        return form.getPassword().equals(form.getConfirmedPassword());
    }


}
