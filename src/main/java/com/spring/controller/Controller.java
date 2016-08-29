package com.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.tiles.request.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.domain.Product;
import com.spring.service.ProductService;

@org.springframework.stereotype.Controller
public class Controller {

	private ProductService productService;

	@Autowired(required = true)
	@Qualifier(value = "productService")
	public void setPersonService(ProductService ps) {
		this.productService = ps;
	}

	@RequestMapping("/")
	public String getWelcome(Model model) {		
		
		int prodId = 0, prevProdId=0, prevprevProdId = 0;
		List<Product> prod = productService.getAllProducts();
		List<Product> latestProducts = new ArrayList<Product>();
		for (int i=0; i<prod.size(); i++) {
			prodId = prod.get(i).getId();
		}
		for (int i=0; i<prod.size()-1; i++) {
			prevProdId = prod.get(i).getId();
		}
		for (int i=0; i<prod.size()-2; i++) {
			prevprevProdId = prod.get(i).getId();
		}
		
		Product theYoungest = productService.getProductById(prodId);
		Product theYoungest1 = productService.getProductById(prevProdId);
		Product theYoungest2 = productService.getProductById(prevprevProdId);
		latestProducts.add(theYoungest);
		latestProducts.add(theYoungest1);
		latestProducts.add(theYoungest2);
		model.addAttribute("news", latestProducts);
		return "index";

	}

	@RequestMapping("/products")
	public String getProducts(Model model) {
		model.addAttribute("helo", "helo word");
		model.addAttribute("products", this.productService.getAllProducts());
		return "products";
	}

	@RequestMapping("/detail")
	public String getProductById(Model model, @RequestParam("id") int id) {
		model.addAttribute("product", this.productService.getProductById(id));
		return "product";
	}


	@RequestMapping("/admin")
	public String getAdmin(Model model, HttpServletRequest req) {
		int id;
		String idStr = req.getParameter("id");
		if (idStr!=null){ id = Integer.parseInt(idStr); 
		model.addAttribute("productById", productService.getProductById(id));
		}
		Product productAdd = new Product();
		model.addAttribute("product", productAdd);

		model.addAttribute("productTitle", productService.getAllProducts());
		return "admin";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product newProduct) {

		productService.addProduct(newProduct);
	/*	String name = null;
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
 
				name = file.getOriginalFilename();
				File uploadedFile = new File(rootDirectory + "resources\\productsImages\\" + newProduct.getId() + ".png");
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(uploadedFile));
				stream.write(bytes);
				stream.flush();
				stream.close();
				 file.transferTo(uploadedFile);
				System.out.println("uploaded: " + uploadedFile.getAbsolutePath());
 
				System.out.println("You successfully uploaded file=" + name);
 
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			
		}*/
		
		
		return "redirect:/admin";
	}
	
	@RequestMapping(value="/admin/edit/{id}", method = RequestMethod.POST)
	public String editProduct(@PathVariable("id") int id, Model model, HttpServletRequest req) {
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		int count = Integer.parseInt(req.getParameter("count"));
		int price = Integer.parseInt(req.getParameter("price"));
		int idProvider = Integer.parseInt(req.getParameter("ID_provider"));
		String productImage = req.getParameter("productImage");
		Product newProduct = new Product(title, description, price, count, productImage);
		productService.editProduct(newProduct, id);
		/*String name = null;
		String rootDirectory = req.getSession().getServletContext().getRealPath("/");
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
 
				name = file.getOriginalFilename();
				File uploadedFile = new File(rootDirectory + "resources\\productsImages\\" + id + ".png");
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(uploadedFile));
				stream.write(bytes);
				stream.flush();
				stream.close();
				 file.transferTo(uploadedFile);
				System.out.println("uploaded: " + uploadedFile.getAbsolutePath());
 
				System.out.println("You successfully uploaded file=" + name);
 
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			
		}*/
		
		
		return "redirect:/admin";
	}
	
	@RequestMapping(value="/admin/delete/{id}")
	public String deleteProduct(Model model, @PathVariable("id") int id) {
		productService.deleteProduct(id);
		return "redirect:/admin";
	}
	
	
}
