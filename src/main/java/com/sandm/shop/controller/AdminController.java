package com.sandm.shop.controller;

import com.sandm.shop.pojo.Admin;
import com.sandm.shop.service.AdminService;
import com.sandm.shop.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/register")
    public String toRegister(){
        return "register";
    }

    @Autowired
    @Qualifier("adminServiceImpl")
    public AdminServiceImpl adminService;

    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session){
        Admin admin = adminService.AdminLogin(username, password);
        System.out.println(admin);
        if (admin != null){
            session.setAttribute("admin",admin);
            return "redirect:/product/allProduct";
        }
        return "login";
    }
}
