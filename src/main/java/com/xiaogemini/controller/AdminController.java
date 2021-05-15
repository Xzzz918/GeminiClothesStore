package com.xiaogemini.controller;

import com.xiaogemini.pojo.Admin;
import com.xiaogemini.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/14 11:44
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    @Qualifier(value = "adminServiceImpl")
    private AdminService adminService;
    @RequestMapping("/queryAll")
    public String queryAll(Model model){
        List<Admin> admins = adminService.queryAll();
        model.addAttribute("admin", admins);
        return "allAdmin";
    }
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/index")
    public String index(){
        return "adminIndex";
    }
}
