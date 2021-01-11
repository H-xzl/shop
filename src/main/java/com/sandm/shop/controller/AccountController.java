package com.sandm.shop.controller;

import com.sandm.shop.pojo.User;
import com.sandm.shop.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @program: shop
 * @description: 数据分析Controller
 * @create: 2020-12-29 16:38
 **/
@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/allAccount")
    public String account(Model model){
        //查询所有用户
        List<User> users = userService.getUserList();
        model.addAttribute("users", users);
        return "account";
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public String deleteUser(int id){
        int i = userService.deleteUser(id);
        if (i>0){
            return "1";
        }
        return "0";
    }
}
