package com.academy.ecommerce.service;

import com.academy.ecommerce.model.Address;

import java.util.List;

public interface AddressService {
    public List<Address> getAll();
    public Address findById(Long id);
    public Address save(Address address);
    public Address update(Address address);
    public void deleteById(Long id);
}
