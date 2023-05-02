package com.org.CRUDOperations.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.CRUDOperations.model.Product;
import com.org.CRUDOperations.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/register")
	public String register(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "register";
	}

	@PostMapping("/register1")
	public String addProduct(@ModelAttribute("product") Product products, Model model) {

		service.saveProduct(products);
		List<Product> product = service.getProducts();
		System.out.println(products);
		System.out.println(product);
		model.addAttribute("products", product);
		return "sucess";
	}

	@GetMapping("/getproducts")
	public String getAllProducts1(Model model) {
		List<Product> product = service.getProducts();
		model.addAttribute("products", product);
		
		 System.out.println("Number of products: " + product.size());
		 System.out.println("Module of products: " + model.getAttribute("products"));
		 
		 List<Product> producss = (List<Product>) model.getAttribute("products");
		return "products";
	}

	@PostMapping("/update")

	public String updatePerson(@ModelAttribute("product") Product product) {
		System.out.println("Update :" + service.updateProduct(product));
		return "display";
	}

	@GetMapping("/delete")
	public String deleteItem(@RequestParam("id") int id) {
		System.out.println("Delete " + service.deleteProduct(id));
		return "display";
	}
}
