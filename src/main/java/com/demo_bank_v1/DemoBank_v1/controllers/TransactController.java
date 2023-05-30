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

    User user;
    double currentBalance;
    double newBalance;

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
        user = (User)session.getAttribute("user");

//        TODO: GET CURRENT ACCOUNT BALANCE:
        int acc_id = Integer.parseInt(accountID);
        double depositAmountValue = Double.parseDouble(depositAmount);

//        TODO: CHECK IF DEPOSIT AMOUNT IS ZERO:
        if (depositAmountValue == 0){
            redirectAttributes.addFlashAttribute("error", "Deposit Amount Cannot be of 0 (Zero) value");
            return "redirect:/app/dashboard";
        }

//        TODO: UPDATE BALANCE :
        currentBalance = accountRepository.getAccountBalance(user.getUser_id(), acc_id);
        newBalance = currentBalance + depositAmountValue;

//        Update Account:
        accountRepository.changeAccountBalanceById(newBalance, acc_id);

        redirectAttributes.addFlashAttribute("success", "Amount Deposited Successfully!");
        return "redirect:/app/dashboard";
    }
//    END OF DEPOSIT

    @PostMapping("/transfer")
    public String transfer(@RequestParam("transfer_from") String transfer_from,
                           @RequestParam("transfer_to") String transfer_to,
                           @RequestParam("transfer_amount") String transfer_amount,
                           HttpSession session,
                           RedirectAttributes redirectAttributes){
//    Init Error Message Value:
        String errorMessage;

//    TODO: CHECK FOR EMPTY FIELDS:
        if (transfer_from.isEmpty() || transfer_to.isEmpty() || transfer_amount.isEmpty()){
            errorMessage = "The account transferring From and To along with Amount cannot be empty!";
            redirectAttributes.addFlashAttribute("error", errorMessage);
            return "redirect:/app/dashboard";
        }

//    TODO: CONVERT VARIABLES:
        int transferFromID = Integer.parseInt(transfer_from);
        int transferToId = Integer.parseInt(transfer_to);
        double transferAmount = Double.parseDouble(transfer_amount);

//    TODO: CHECK IF TRANSFERRING INTO THE SAME ACCOUNT:
        if (transferFromID == transferToId){
            errorMessage = "Cannot Transfer into the same Account, Please select appropriate account to perform Transfer!";
            redirectAttributes.addFlashAttribute("error", errorMessage);
            return "redirect:/app/dashboard";
        }

//    TODO: CHECK FOR 0 (ZERO) VALUES:
        if (transferAmount == 0){
            errorMessage = "Cannot Transfer an Amount of 0 (Zero) value, Please enter a value greater than 0 (Zero)!";
            redirectAttributes.addFlashAttribute("error", errorMessage);
            return "redirect:/app/dashboard";
        }

//    TODO: GET LOGGED IN USER:
        user = (User)session.getAttribute("user");

//    TODO: GET CURRENT BALANCE:
        double currentBalanceFromAcc = accountRepository.getAccountBalance(user.getUser_id(), transferFromID);
        double currentBalanceTargetAcc = accountRepository.getAccountBalance(user.getUser_id(), transferToId);

//    TODO: SET NEW BALANCE:
        double newBalanceFromAcc = currentBalanceFromAcc - transferAmount;
        double newBalanceTargetAcc = currentBalanceTargetAcc + transferAmount;

//    TODO: CHANGE THE BALANCE OF THE ACCOUNTS TRANSFERRING FROM:
        accountRepository.changeAccountBalanceById(newBalanceFromAcc, transferFromID);

//    TODO: CHANGE THE BALANCE OF THE TRANSFER INTO ACCOUNT:
        accountRepository.changeAccountBalanceById(newBalanceTargetAcc, transferToId);

        redirectAttributes.addFlashAttribute("success", "Amount Transferred Successfully!");
        return "redirect:/app/dashboard";
    }
//    END OF TRANSFER METHOD

    @PostMapping("/withdraw")
    public String withdraw(@RequestParam("withdrawal-amount") String withdrawalAmount,
                           @RequestParam("account_id") String accountID,
                           HttpSession session,
                           RedirectAttributes redirectAttributes){

        String errorMessage;
//        TODO: CHECK FOR EMPTY VALUES:
        if (withdrawalAmount.isEmpty() || accountID.isEmpty()){
            errorMessage = "Withdrawal Amount or Account cannot be empty!";
            redirectAttributes.addFlashAttribute("error", errorMessage);
            return "redirect:/app/dashboard";
        }

//        TODO: CONVERT VARIABLES:
        double withdrawal_amount = Double.parseDouble(withdrawalAmount);
        int account_id = Integer.parseInt(accountID);

//        TODO: CHECK FOR 0 VALUES:
        if (withdrawal_amount == 0){
            errorMessage = "Withdrawal Amount cannot be 0 (ZERO)!";
            redirectAttributes.addFlashAttribute("error", errorMessage);
            return "redirect:/app/dashboard";
        }

//        TODO: GET LOGGED IN USER:
        user = (User)session.getAttribute("user");

//        TODO: GET CURRENT BALANCE:
        currentBalance = accountRepository.getAccountBalance(user.getUser_id(), account_id);

//        TODO: SET NEW BALANCE:
        newBalance = currentBalance - withdrawal_amount;

//        TODO: UPDATE ACCOUNT BALANCE:
        accountRepository.changeAccountBalanceById(newBalance, account_id);

        redirectAttributes.addFlashAttribute("success", "Withdrawal Successful!");
        return "redirect:/app/dashboard";
    }

}
