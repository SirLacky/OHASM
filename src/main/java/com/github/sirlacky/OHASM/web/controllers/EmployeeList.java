package com.github.sirlacky.OHASM.web.controllers;

import com.github.sirlacky.OHASM.domain.model.Employee;
import com.github.sirlacky.OHASM.domain.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/employee-list")
public class EmployeeList {

    @Autowired
    EmployeeRepository employeeRepository;

    @ModelAttribute("employeeList")
    public List<Employee> getEmployeeList(){
        return employeeRepository.findAll();
    }

    @GetMapping
    public String prepareEmployeeListPage(){
        return "employee-list";
    }
    @GetMapping("/print")
    public String prepareEmployeeCertificate(@RequestParam Long id, Model model){
        Employee employee = employeeRepository.getOne(id);
        model.addAttribute("employee",employee);
        return "employee-certificate";
    }

}
