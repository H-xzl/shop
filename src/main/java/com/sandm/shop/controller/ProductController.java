package com.sandm.shop.controller;

import com.sandm.shop.pojo.Product;
import com.sandm.shop.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

/**
 * @program: shop
 * @description:
 * @create: 2020-12-28 17:29
 **/
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    @Qualifier("productServiceImpl")
    private ProductServiceImpl productService;

    @RequestMapping("/allProduct")
    public String productList(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);
        return "products";
    }

    @RequestMapping("/add")
    public String add(){
        return "addProduct";
    }

    @RequestMapping("/addProduct")
    public String addProduct(MultipartFile picUrl, String name, BigDecimal price, int sum, int visitCount, int status, String description) throws IOException {
        System.out.println(picUrl);
        // 获得上传文件名
        System.out.println(picUrl.getOriginalFilename());
        // 图片名字---(防止冲突)--->asdf其4rqwfasdf.png
        String realName = picUrl.getOriginalFilename();
        // .png
        String suffix = realName.substring(realName.lastIndexOf("."));
        System.out.println(suffix);
        //1a2b.png
        String uuid = UUID.randomUUID().toString();
        System.out.println(uuid);
        //保存使用文件名。
        String saveName = uuid+suffix;
        //① 获得static目录所在位置
        //String path = ResourceUtils.getFile("classpath:static").getPath();
        String path = "D:\\shops";
        System.out.println(path);
        String savePath = path+"/"+saveName;
        //② 使用pic--->static目录
        picUrl.transferTo(new File(savePath));

        java.sql.Date addDate = new  java.sql.Date( new java.util.Date().getTime());
        //1. 接受数据
        Product p = new Product(null, name, price, sum, visitCount, status, addDate, description, saveName);
        //2. p对象添加mysql数据库。
        productService.addProduct(p);
        System.out.println(p);

        return "redirect:/product/allProduct";
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String deleteProduct(int id){
        int i = productService.deleteProduct(id);
        if (i>0){
            return "1";
        }
        return "0";
    }

    @RequestMapping("/editProduct")
    public String addProduct(Product product){
        System.out.println("/product/editProduct==========product:"+product);
        int i = productService.modifyProduct(product);
        return "redirect:/product/allProduct";
    }

    @RequestMapping("/edit")
    public String editProduct(int id,Model model){
        System.out.println("/product/edit==========id:"+id);
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "editProduct";
    }

    @RequestMapping("/info")
    public String infoProduct(int id,Model model){
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "info";
    }
}
