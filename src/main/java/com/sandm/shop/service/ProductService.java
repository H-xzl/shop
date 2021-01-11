package com.sandm.shop.service;

import com.sandm.shop.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @description: 商品接口
 * @date 2020/12/21 15:37
 */
public interface ProductService {
    /**
     * 返回产品信息
     *
     * @param id id
     * @return Product
     * @date 2020/12/21 16:20
     */
    public Product getProductById(Integer id);

    /**
     * 返回所有商品列表
     *
     * @return List<Product>
     * @date 2020/12/21 16:22
     */
    public List<Product> getProductList();

    /**
     * 添加商品
     *
     * @param product product
     * @return int
     * @date 2020/12/21 16:23
     */
    public int addProduct(Product product);

    /**
     * 修改商品信息
     *
     * @param product product
     * @return int
     * @date 2020/12/21 16:23
     */
    public int modifyProduct(Product product);

    /**
     * 删除商品
     *
     * @param id id
     * @return int
     * @date 2020/12/21 16:24
     */
    public int deleteProduct(Integer id);

    /**
     * 修改商品状态
     *
     * @param id id
     * @param status status
     * @return int
     * @date 2020/12/28 11:16
     */
    public int update(@Param("id")int id, @Param("status")String status);

    /**
     * 删除一组商品
     *
     * @param ids list
     * @return int
     * @date 2020/12/28 11:17
     */
    public int deleteBatch(@Param("list")int[] ids);

    /**
     * 热卖商品TOP5获取
     *
     * @return List<Product>
     * @date 2020/12/29 17:35
     */
    public List<Product> hotProduct();

    /**
     * 急需补货商品TOP5
     *
     * @return List<Product>
     * @date 2020/12/29 17:36
     */
    public List<Product> minProduct();
}