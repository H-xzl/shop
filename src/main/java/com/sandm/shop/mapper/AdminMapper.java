package com.sandm.shop.mapper;

import com.sandm.shop.pojo.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface AdminMapper {

    public int addAdmin(Admin user);
    public Admin AdminLogin(@Param("username") String name, @Param("password") String pwd);
}
