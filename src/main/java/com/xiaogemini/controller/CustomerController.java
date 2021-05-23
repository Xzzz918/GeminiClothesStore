package com.xiaogemini.controller;

import com.xiaogemini.pojo.Customer;
import com.xiaogemini.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author gemini
 * Created in  2021/5/16 10:13
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/index")
    public String index(Model model, HttpSession httpSession){
        String telephone = httpSession.getAttribute("user").toString();
        Customer customer = customerService.selectByTel(telephone);
        model.addAttribute("customer", customer);
        return "customerIndex";
    }

    @RequestMapping("/update")
    public String update(Model model, HttpSession httpSession){
        String telephone = httpSession.getAttribute("user").toString();
        Customer customer = customerService.selectByTel(telephone);
        model.addAttribute("customer", customer);
        return "customer/update";
    }

    @RequestMapping("/updateCustomer")
    public String updateCustomer(Customer customer){
        customerService.update(customer);
        return "redirect:/customer/CustomerInfo";
    }

    @RequestMapping("/CustomerInfo")
    public String info(Model model, HttpSession httpSession){
        String telephone = httpSession.getAttribute("user").toString();
        Customer customer = customerService.selectByTel(telephone);
        model.addAttribute("customer", customer);
        return "customer/info";
    }
}
