package com.academy.ecommerce.ctr;

import com.academy.ecommerce.model.Product;
import com.academy.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/product")
public class ProductController {
    @Autowired
    ProductService productService;

    @GetMapping("/all")
    public ResponseEntity<List<Product>> productMapping(){
        List<Product> productMapping = productService.getAll();
        return new ResponseEntity <List<Product>>(productMapping, HttpStatus.OK);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Product> productMappingById(@PathVariable("id") Long id){
        Product productMapping = productService.findById(id);
        return new ResponseEntity<Product>(productMapping, HttpStatus.OK);
    }
    @PostMapping("/save")
    public ResponseEntity<Product> productSaving(@RequestBody Product product){
        Product productMapping = productService.save(product);
        return new ResponseEntity<Product>(productMapping, HttpStatus.CREATED);
    }
    @PutMapping("/update")
    public ResponseEntity<Product> productUpdated(@RequestBody Product product){
        Product productMapping = productService.update(product);
        return new ResponseEntity<Product>(productMapping, HttpStatus.OK);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<?> productDeleted(@PathVariable("id") Long id){
        productService.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }


}
