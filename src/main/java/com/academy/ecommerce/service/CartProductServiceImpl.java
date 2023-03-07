package com.academy.ecommerce.service;

import com.academy.ecommerce.model.CartProduct;
import com.academy.ecommerce.model.Product;
import com.academy.ecommerce.repo.CartProductRepo;
import com.academy.ecommerce.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartProductServiceImpl implements CartProductService{
    @Autowired
    CartProductRepo cartProductRepo;


    @Override
    public List<CartProduct> getAll(){ return (List<CartProduct>) cartProductRepo.findAll(); }

    @Override
    public CartProduct findById(Long id){
        return cartProductRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("CartProduct Not Found"));
    }

    @Override
    public CartProduct save(CartProduct cartProduct) {
        return cartProductRepo.save(cartProduct);
    }

    @Override
    public CartProduct update(CartProduct cartProduct) {
        return cartProductRepo.save(cartProduct);
    }

    @Override
    public void delete(Long id) {
        cartProductRepo.deleteById(id);
    }
}
