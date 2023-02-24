package com.academy.ecommerce.service;

import com.academy.ecommerce.model.Product;

import java.util.List;

public interface ProductService {
    public List<Product> getAll();
    public Product findById(Long id);
    public Product save(Product product);
    public Product update(Product product);
    public void delete(Long id);
}
