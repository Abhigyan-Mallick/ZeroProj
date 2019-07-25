package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class ProductDAOTest {
	
	static ProductDAO productDAO;
	
	@BeforeClass

	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		productDAO = (ProductDAO) context.getBean("productDAO");
	}
	
	

	@Test
	public void addProductTest()
	{
		Product product = new Product();
		product.setProductName("Books");
		product.setProductDesc("An autobiography of Chris Gayle");
		product.setStock(500);
		product.setPrice(700);
		product.setCategoryId(51);
		product.setSupplierId(33);
		
		System.out.println("\n");
		System.out.println("Data will be Stored in The DataBase");
		
		assertTrue("Problem in Adding Product", productDAO.addProduct(product));
	
	}
	
	@Ignore
	@Test
	public void deleteProductTest()
	{
		Product product = productDAO.getProduct(14);
		
		assertTrue("Problem in Deleting Product", productDAO.deleteProduct(product));
		
	}
	
	@Ignore
	@Test
	public void updateProductTest()
	{
		Product product = productDAO.getProduct(49);
		product.setPrice(3000);
		assertTrue("Problem in Updating the Product", productDAO.updateProduct(product));
	}
	@Ignore
	@Test
	public void retriveProductTest()
	{
	System.out.println("\n" +"\n");
	System.out.println("---------  Product Data Retrive from Table  ----------");
	
	List<Product> listProducts = productDAO.listProducts();
	assertTrue("Problem in Retriving the Product", listProducts.size()>0);
	
	for(Product product:listProducts)
	{
	System.out.println("Product Name: "+ product.getProductName());
	System.out.println("Product Discription: "+ product.getProductDesc());
	System.out.println("Product Price: "+ product.getPrice());
	System.out.println("Product Stock: "+ product.getStock());
	System.out.println("Product Supplier ID: "+ product.getSupplierId());
	}
	}
	
	@Ignore
	@Test
	public void listCategoryTest()
	{
		System.out.println("\n" +"\n");
		System.out.println("---------  Product Data Retrive from Table With Category  ----------");
		List<Product> listProducts = productDAO.listProducts();
		
		assertTrue("problem in retriving the product",listProducts.size()>0); 
		
		for(Product product:listProducts)
		{
			System.out.println("Product Name: "+ product.getProductName());
			System.out.println("Product Discription: "+ product.getProductDesc());
			System.out.println("Product Price: "+ product.getPrice());
			System.out.println("Product Stock: "+ product.getStock());
			System.out.println("Product Supplier ID: "+ product.getSupplierId());
			System.out.println("**************************************");
			}
	}


}
