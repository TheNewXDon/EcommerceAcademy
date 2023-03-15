package com.academy.ecommerce.controller;

import com.academy.ecommerce.model.Address;
import com.academy.ecommerce.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/address")
@CrossOrigin
public class AddressController {
    @Autowired
    AddressService addressService;
    @GetMapping("/all")

    public ResponseEntity<List<Address>> getAll() {
        List<Address> result = addressService.getAll();
        return new ResponseEntity<List<Address>>(result, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Address> getAddressById(@PathVariable("id") Long id) {
        Address result = addressService.findById(id);
        return new ResponseEntity<Address>(result, HttpStatus.OK);
    }

    @PostMapping("/save")
    public ResponseEntity<Address> saveAddress(@RequestBody Address address) {
        Address result = addressService.save(address);
        return new ResponseEntity<Address>(result, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<Address> updateAddress(@RequestBody Address address) {
        Address result = addressService.update(address);
        return new ResponseEntity<Address>(result, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteCustomer(@PathVariable("id") Long id) {
        addressService.deleteById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
