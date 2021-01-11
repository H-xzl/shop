package com.sandm.shop.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.Serializable;

/**
 * @program: shop
 * @description:用户实体类
 * @create: 2020-12-21 15:34
 **/
@Data
@NoArgsConstructor
public class User implements Serializable {
    private Integer id;
    private String username;
    private String password;
    private Integer age;
    private String mobile;
    private String email;
    private String address;
    private Integer status;
    private String headPic;

    public User(Integer id, String username, String password, Integer age, String mobile, String email, String address, Integer status, String headPic) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.age = age;
        this.mobile = mobile;
        this.email = email;
        this.address = address;
        this.status = status;
        this.headPic = headPic;
    }
}
