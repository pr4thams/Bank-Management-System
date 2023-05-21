package com.demo_bank_v1.DemoBank_v1.controllers;

import ch.qos.logback.core.model.Model;
import com.demo_bank_v1.DemoBank_v1.models.User;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

    @GetMapping("/register")
    public ModelAndView getRegister(){
        ModelAndView getRegisterPage = new ModelAndView("register");
        System.out.println("In Register page controller");
        getRegisterPage.addObject("PageTitle", "Register");
        return getRegisterPage;
    }


    @PostMapping("/register")
    public ModelAndView register(@Valid @ModelAttribute("registerUser")User user,
                                 BindingResult result,
                                 @RequestParam("first_name") String first_name,
                                 @RequestParam("last_name") String last_name,
                                 @RequestParam("email") String email,
                                 @RequestParam("password") String password,
                                 @RequestParam("confirm_password") String confirm_password) {

        ModelAndView registrationPage = new ModelAndView("register");

//        Check for errors:
        if(result.hasErrors() && confirm_password.isEmpty()){
            registrationPage.addObject("confirm_pass", "The confirm field is required");
            return registrationPage;
        }
    return registrationPage;
    }
}
