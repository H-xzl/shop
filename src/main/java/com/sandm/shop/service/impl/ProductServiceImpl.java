package com.sandm.shop.service.impl;

import com.sandm.shop.mapper.ProductMapper;
import com.sandm.shop.pojo.Product;
import com.sandm.shop.service.ProductService;

import java.util.List;

/**
 * @program: shop
 * @description: ProductService
 * @create: 2020-12-21 16:47
 **/
public class ProductServiceImpl implements ProductService {

    private ProductMapper productMapper;

    public void setProductMapper(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    @Override
    public Product getProductById(Integer id) {
        return productMapper.getProductById(id);
    }

    @Override
    public List<Product> getProductList() {
        return productMapper.getProductList();
    }

    @Override
    public int addProduct(Product product) {
        return productMapper.addProduct(product);
    }

    @Override
    public int modifyProduct(Product product) {
        return productMapper.modifyProduct(product);
    }

    @Override
    public int deleteProduct(Integer id) {
        return productMapper.deleteProduct(id);
    }

    @Override
    public int update(int id, String status) {
        return productMapper.update(id,status);
    }

    @Override
    public int deleteBatch(int[] ids) {
        return productMapper.deleteBatch(ids);
    }

    @Override
    public List<Product> hotProduct() {
        return productMapper.hotProduct();
    }

    @Override
    public List<Product> minProduct() {
        return productMapper.minProduct();
    }
}
