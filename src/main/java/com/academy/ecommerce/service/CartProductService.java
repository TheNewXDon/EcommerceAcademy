package com.academy.ecommerce.service;

import com.academy.ecommerce.model.CartProduct;
import com.academy.ecommerce.model.Product;
import org.springframework.stereotype.Service;

import java.util.List;

public interface CartProductService {
    public List<CartProduct> getAll();
    public CartProduct findById(Long id);
    public CartProduct save(CartProduct cartProduct);
    public CartProduct update(CartProduct cartProduct);
    public void delete(Long id);
}
