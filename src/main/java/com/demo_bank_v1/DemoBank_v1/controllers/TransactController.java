package com.demo_bank_v1.DemoBank_v1.controllers;

import com.demo_bank_v1.DemoBank_v1.models.User;
import com.demo_bank_v1.DemoBank_v1.repository.AccountRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/transact")
public class TransactController {

    @Autowired
    private AccountRepository accountRepository;

    @PostMapping("/deposit")
    public String deposit(@RequestParam("deposit_amount")String depositAmount,
                          @RequestParam("account_id") String accountID,
                          HttpSession session,
                          RedirectAttributes redirectAttributes){

//        TODO: CHECK FOR NULL VALUES:
        if (depositAmount.isEmpty() || accountID.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "Deposit Amount or Account Cannot be Empty");
            return "redirect:/app/dashboard";
        }

//        TODO: GET LOGGED IN USER:
        User user = (User)session.getAttribute("user");

//        TODO: GET CURRENT ACCOUNT BALANCE:
        int acc_id = Integer.parseInt(accountID);
        double depositAmountValue = Double.parseDouble(depositAmount);

//        TODO: CHECK IF DEPOSIT AMOUNT IS ZERO:
        if (depositAmountValue == 0){
            redirectAttributes.addFlashAttribute("error", "Deposit Amount Cannot be of 0 (Zero) value");
            return "redirect:/app/dashboard";
        }

//        TODO: UPDATE BALANCE :
        double currentBalance = accountRepository.getAccountBalance(user.getUser_id(), acc_id);
        double newBalance = currentBalance + depositAmountValue;

//        Update Account:
        accountRepository.changeAccountBalanceById(newBalance, acc_id);

        redirectAttributes.addFlashAttribute("success", "Amount Deposited Successfully!");
        return "redirect:/app/dashboard";
    }

}
