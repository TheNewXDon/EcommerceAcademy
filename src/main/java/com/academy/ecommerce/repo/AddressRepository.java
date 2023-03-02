package com.academy.ecommerce.repo;

import org.springframework.data.repository.CrudRepository;
import com.academy.ecommerce.model.Address;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends CrudRepository<Address,Long> {


}
