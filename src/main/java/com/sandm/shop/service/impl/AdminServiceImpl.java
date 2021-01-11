package com.sandm.shop.service.impl;

import com.sandm.shop.mapper.AdminMapper;
import com.sandm.shop.pojo.Admin;

public class AdminServiceImpl {
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {this.adminMapper=adminMapper;}
    public Admin AdminLogin(String username, String password) {
        System.out.println("1");
        return adminMapper.AdminLogin(username, password);
    }

}
