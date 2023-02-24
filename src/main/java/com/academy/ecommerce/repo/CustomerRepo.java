package com.academy.ecommerce.repo;

import com.academy.ecommerce.model.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepo extends CrudRepository<Customer, Long> {

}
