package com.github.sirlacky.OHASM.web.controllers;

import com.github.sirlacky.OHASM.domain.model.Employee;
import com.github.sirlacky.OHASM.domain.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDate;

@Controller
public class AddEmpoyeePage {

    @Autowired
    EmployeeRepository employeeRepository;

    @GetMapping("/add-employee")
    public String addEmployeePage(Model model){
        model.addAttribute("employee",new Employee());
        return "add-employee";
    }
    @PostMapping("/add-employee")
    public String addEmployeeForm(@ModelAttribute ("employee") Employee employee){
        employeeRepository.save(employee);
        return "redirect:/main";
    }

}
