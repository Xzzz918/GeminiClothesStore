package com.xiaogemini.controller;

import com.xiaogemini.pojo.*;
import com.xiaogemini.service.AdminService;
import com.xiaogemini.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @author gemini
 * Created in  2021/5/15 15:05
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    @Qualifier("adminServiceImpl")
    private AdminService adminService;
    @Autowired
    @Qualifier("customerServiceImpl")
    private CustomerService customerService;

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/checkin")
    @ResponseBody
    public Message checkIn(String telephone, String password, HttpServletRequest request) {
        Message message = new Message();
        // 判断是否是admin
        if (Constant.ADMIN.equals(telephone)) {
            Admin admin = adminService.selectAdmin(new Admin(telephone, password));
            if (admin != null) {
                HttpSession session = request.getSession(true);
                String sessionId = request.getRequestedSessionId();
                Map<String, String> sessionMap = SessionSave.getSessionMap();
                sessionMap.put(Constant.ADMIN, sessionId);
                session.setAttribute(Constant.ADMIN, admin);
                session.setAttribute("user", "admin");
                session.setAttribute("password", admin.getPassword());
                message.setMsgCode(message.getADMIN());
                message.setMsg("管理员");
            } else {
                message.setMsgCode(message.getERROR());
                message.setMsg("管理员密码错误！");
            }
        }
        else {
            Customer customer = customerService.selectCustomer(new Customer(telephone, password));
            if (customer != null){
                HttpSession session = request.getSession(true);
                String sessionId = session.getId();
                Map<String, String> sessionMap = SessionSave.getSessionMap();
                sessionMap.put(customer.getTelephone(), sessionId);
                session.setAttribute(customer.getTelephone(), customer);
                session.setAttribute("user", customer.getTelephone());
                session.setAttribute("password", customer.getPassword());
                message.setMsgCode(message.getCUSTOMER());
                message.setMsg("客户");
            }
            else {
                message.setMsgCode(message.getERROR());
                message.setMsg("客户密码错误！");
            }
        }
        return message;
    }

}
