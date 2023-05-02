package com.org.CRUDOperations.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Repository;

import com.org.CRUDOperations.model.Product;



@Repository

public class ProductRepository {

	private List<Product> list = new ArrayList<Product>();

	public List<Product> getAllProducts() {
		return list;
	}


	public Product save(Product p) {
		Product product = new Product();
		product.setId(p.getId());
		product.setName(p.getName());
		product.setPrice(p.getPrice());
		list.add(product);
		return product;
	}

	public String delete(int id) {
		list.removeIf(x -> x.getId() == (id));
		return null;
	}

	public Product update(Product product) {
		int idx = 0;
		int id = 0;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId() == (product.getId())) {
				id = product.getId();
				idx = i;
				break;
			}
		}

		Product product1 = new Product();
		product1.setId(id);
		product1.setName(product.getName());
		product1.setPrice(product.getPrice());
		list.set(idx, product);
		return product1;
	}

}
