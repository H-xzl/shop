package com.sandm.shop.service.impl;

import com.sandm.shop.mapper.UserMapper;
import com.sandm.shop.mapper.UserService;
import com.sandm.shop.pojo.User;

import java.util.List;

/**
 * @program: shop
 * @description: UserService
 * @author: Closer
 * @create: 2020-12-21 16:47
 **/
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User getUserById(Integer id) {
        return userMapper.getUserById(id);
    }

    @Override
    public List<User> getUserList() {
        return userMapper.getUserList();
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int modifyUser(User user) {
        return userMapper.modifyUser(user);
    }

    @Override
    public int updatePwd(Integer id, String pwd) {
        return userMapper.updatePwd(id,pwd);
    }

    @Override
    public int deleteUser(Integer id) {
        return userMapper.deleteUser(id);
    }
}
