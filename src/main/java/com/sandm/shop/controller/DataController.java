package com.sandm.shop.controller;

import com.sandm.shop.pojo.Product;
import com.sandm.shop.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @program: shop
 * @description: 数据分析
 * @create: 2020-12-29 16:40
 **/
@Controller
@RequestMapping("/data")
public class DataController {
    @Autowired
    private ProductServiceImpl productService;

    @RequestMapping("/analysis")
    public String analysis(Model model){
        //热卖商品TOP5获取
        List<Product> hotProducts = productService.hotProduct();
        //急需补货商品TOP5
        List<Product> minProducts = productService.minProduct();
        model.addAttribute("hotProducts",hotProducts);
        model.addAttribute("minProducts",minProducts);
        return "data";
    }
}
