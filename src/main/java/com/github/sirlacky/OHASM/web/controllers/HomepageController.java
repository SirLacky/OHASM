package com.github.sirlacky.OHASM.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class HomepageController {

    @GetMapping("/")
    public String mainPageController(){
        return "home-page";
    }

    @GetMapping("/homepage")
    public String homepageController(){
        return "home-page";
    }

}
