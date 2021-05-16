package com.xiaogemini.controller;

import com.xiaogemini.pojo.Customer;
import com.xiaogemini.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Date;

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
    public String index(){
        return "customerIndex";
    }

    @RequestMapping("/add")
    public void add(){
        Customer customer = new Customer();
        customer.setName("Gemini");
        customer.setTelephone("13021202155");
        customer.setAddress("海淀区");
        customer.setPassword("123456");
        customerService.addCustomer(customer);
    }
}
