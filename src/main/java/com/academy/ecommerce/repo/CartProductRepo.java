package com.academy.ecommerce.repo;

import com.academy.ecommerce.model.CartProduct;
import com.academy.ecommerce.model.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartProductRepo extends CrudRepository<CartProduct, Long> {

}
