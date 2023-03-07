package com.academy.ecommerce.ctr;

import com.academy.ecommerce.model.CartProduct;
import com.academy.ecommerce.model.Product;
import com.academy.ecommerce.service.CartProductService;
import com.academy.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/cartProduct")
public class CartProductCtr {

    @Autowired
    CartProductService cartProductService;

    @GetMapping("/all")
    public ResponseEntity<List<CartProduct>> getAll(){
        List<CartProduct> result = cartProductService.getAll();
        return new ResponseEntity <List<CartProduct>>(result, HttpStatus.OK);
    }
    @GetMapping("/{id}")
    public ResponseEntity<CartProduct> findById(@PathVariable("id") Long id){
        CartProduct result = cartProductService.findById(id);
        return new ResponseEntity<CartProduct>(result, HttpStatus.OK);
    }
    @PostMapping("/save")
    public ResponseEntity<CartProduct> productSaving(@RequestBody CartProduct cartProduct){
        CartProduct result = cartProductService.save(cartProduct);
        return new ResponseEntity<CartProduct>(result, HttpStatus.CREATED);
    }
    @PutMapping("/update")
    public ResponseEntity<CartProduct> productUpdated(@RequestBody CartProduct cartProduct){
        CartProduct result = cartProductService.update(cartProduct);
        return new ResponseEntity<CartProduct>(result, HttpStatus.OK);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<?> productDeleted(@PathVariable("id") Long id){
        cartProductService.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
