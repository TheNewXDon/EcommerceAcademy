package com.academy.ecommerce.repository;

import com.academy.ecommerce.model.CartProduct;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartProductRepo extends CrudRepository<CartProduct, Long> {

}
