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

    @RequestMapping("/add")
    public String add(){
        Customer customer = new Customer();
        customer.setName("Killer");
        customer.setTelephone("13021202156");
        customer.setAddress("朝阳区");
        customer.setPassword("123456");
        customerService.addCustomer(customer);
        return "login";
    }
    @RequestMapping("/update")
    public String update(){
        return "customer/update";
    }
    @RequestMapping("/updateCustomer")
    public void updateCustomer(Model model, HttpSession httpSession){
        String telephone = httpSession.getAttribute("user").toString();
        customerService.update(telephone);
    }

    @RequestMapping("/info")
    public String info(Model model, HttpSession httpSession){
        String telephone = httpSession.getAttribute("user").toString();
        Customer customer = customerService.selectByTel(telephone);
        model.addAttribute("customer", customer);
        return "customer/info";
    }
}
