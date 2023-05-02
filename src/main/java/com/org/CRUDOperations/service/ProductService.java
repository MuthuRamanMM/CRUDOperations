package com.org.CRUDOperations.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.CRUDOperations.model.Product;
import com.org.CRUDOperations.repository.ProductRepository;



@Service
public class ProductService {
	
	
	 @Autowired
	    private ProductRepository repository;

	    public Product saveProduct(Product product) {
	        return repository.save(product);
	    }

	    public List<Product> getProducts() {
	        return repository.getAllProducts();
	    }


	    public String deleteProduct(int id) {
	        repository.delete(id);
	        return "product removed !! " + id;
	    }

	    public Product updateProduct(Product product) {
	       return repository.update(product);
	    }

}
