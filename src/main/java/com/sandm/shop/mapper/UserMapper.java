package com.sandm.shop.mapper;

import com.sandm.shop.pojo.User;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * @description: 
 * @param null
 * @date 2020/12/21 15:39
 */
public interface UserMapper {
    /**
     * 通过id查询用户信息
     *
     * @param id id
     * @return User
     * @date 2020/12/21 16:24
     */
    public User getUserById(Integer id);

    /** 
     * 获取所有用户列表
     *
     * @param null
     * @return List<User>
     * @date 2020/12/21 16:25
     */
    public List<User> getUserList();

    /**
     * 添加用户
     *
     * @param user user
     * @return int
     * @date 2020/12/21 16:27
     */
    public int addUser(User user);

    /** 
     * 修改用户信息
     *
     * @param user user
     * @return int
     * @date 2020/12/21 16:27
     */
    public int modifyUser(User user);

    /**
     * 修改用户密码
     *
     * @param id id
     * @param pwd 密码
     * @return int
     * @date 2020/12/21 16:27
     */
    public int updatePwd(@Param("id") Integer id, @Param("password") String pwd);

    /**
     * 删除用户
     * @param id
     * @return int
     * @date 2020/12/21 16:27
     */
    public int deleteUser(Integer id);

    public User select(String usernanme,String password);
}
