package com.academy.ecommerce.ctr;

import com.academy.ecommerce.model.Customer;
import com.academy.ecommerce.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/customer")
@CrossOrigin
public class CustomerCtr {

    @Autowired
    CustomerService customerService;
    @GetMapping("/all")
    public ResponseEntity<List<Customer>> getAll() {
        List<Customer> result = customerService.getAll();
        return new ResponseEntity<List<Customer>>(result, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Customer> getCustomerById(@PathVariable("id") Long id) {
        Customer result = customerService.findById(id);
        return new ResponseEntity<Customer>(result, HttpStatus.OK);
    }

    @PostMapping("/save")
    public ResponseEntity<Customer> saveCustomer(@RequestBody Customer customer) {
        Customer result = customerService.save(customer);
        return new ResponseEntity<Customer>(result, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<Customer> updateCustomer(@RequestBody Customer customer) {
        Customer result = customerService.update(customer);
        return new ResponseEntity<Customer>(result, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteCustomer(@PathVariable("id") Long id) {
        customerService.deleteById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
