package com.codegym.service;

import com.codegym.model.Product;

import java.util.List;

public interface ProductService {
    List<Product>findAll();
    void save(Product product);
    Product findByName(String name);
    void update(int id, Product product);
    void remove(int id);
    Product findById(int id);
}
