package com.demo_bank_v1.DemoBank_v1.controllers;

import com.demo_bank_v1.DemoBank_v1.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/")
    public ModelAndView getIndex(){
        ModelAndView getIndexPage = new ModelAndView("index");
        getIndexPage.addObject("PageTitle","Home");
        System.out.println("In index controller");
        return getIndexPage;
    }


    @GetMapping("/error")
    public ModelAndView getError(){
        ModelAndView getErrorPage = new ModelAndView("error");
        System.out.println("In Error page controller");
        getErrorPage.addObject("PageTitle", "Error");
        return getErrorPage;
    }

    @GetMapping("/verify")
    public ModelAndView getVerify(@RequestParam("token")String token, @RequestParam("code") String code){
//        Set View:
        ModelAndView getVerifyPage;

//        Get token in Database:
        String dbToken = userRepository.checkToken(token);

//        Check If token is valid:
        if(dbToken == null){
            getVerifyPage = new ModelAndView("error");
            getVerifyPage.addObject("error", "This Session has Expired");
            return getVerifyPage;
        }

//        Update and Verify Account
        userRepository.verifyAccount(token, code);

        getVerifyPage = new ModelAndView("login");

        System.out.println("In Verify Account controller");

        getVerifyPage.addObject("success", "Account Verified Successfully, Please proceed to Log In!");
        return getVerifyPage;
    }
}
