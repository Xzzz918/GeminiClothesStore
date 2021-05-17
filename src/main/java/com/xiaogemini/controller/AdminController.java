package com.xiaogemini.controller;

import com.xiaogemini.pojo.Customer;
import com.xiaogemini.pojo.Message;
import com.xiaogemini.service.AdminService;
import com.xiaogemini.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author gemini
 * Created in  2021/5/14 11:44
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    //Controller调用Service层
    @Autowired
    private AdminService adminService;
    @Autowired
    private CustomerService customerService;
    //跳转界面
    @RequestMapping("/toUpdatePwd")
    public String toUpdatePwd(){
        return "admin/updatePwd";
    }
    //管理员主页面
    @RequestMapping("/index")
    public String index(){
        return "adminIndex";
    }
    //管理员修改密码业务
    @RequestMapping("/updatePwd")
    @ResponseBody
    public Message updatePwd(String newPwd, HttpSession httpSession) {
        Message message = new Message();
        httpSession.setAttribute("password", newPwd);
        adminService.updatePwd(newPwd);
        message.setMsgCode(Message.SF_SUCCESS);
        return message;
    }
    //管理员验证密码一致性业务
    @RequestMapping("/verifyPwd")
    @ResponseBody
    public Message verifyPwd(String oldPassword, HttpSession httpSession) {
        Message message = new Message();
        String currentPassword = httpSession.getAttribute("password").toString();
        if (oldPassword.equals(currentPassword)) {
            message.setMsgCode(Message.SF_SUCCESS);
        }
        return message;
    }
    //管理员查询所有客户业务
    @RequestMapping("/myCustomer")
    public String toMyCustomer(Model model){
        List<Customer> customers = customerService.queryAll();
        model.addAttribute("customers", customers);
        return "admin/myCustomer";
    }

}
