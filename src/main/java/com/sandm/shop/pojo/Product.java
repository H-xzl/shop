package com.sandm.shop.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @program: shop
 * @description:商品实体类
 * @create: 2020-12-21 15:36
 **/
@Data

@NoArgsConstructor
public class Product implements Serializable {
    private Integer id;
    private String name;
    private BigDecimal price;
    private Integer sum;
    private Integer visitCount;
    private Integer status;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date addDate;
    private String description;
    private String picUrl;

    public Product(Integer id, String name, BigDecimal price, Integer sum, Integer visitCount, Integer status, Date addDate, String description, String picUrl) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.sum = sum;
        this.visitCount = visitCount;
        this.status = status;
        this.addDate = addDate;
        this.description = description;
        this.picUrl = picUrl;
    }
}
