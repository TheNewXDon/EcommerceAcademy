package com.academy.ecommerce.service;

import com.academy.ecommerce.model.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer> getAll();
    public Customer findById(Long id);
    public Customer save(Customer customer);
    public Customer update(Customer customer);
    public void deleteById(Long id);
}
