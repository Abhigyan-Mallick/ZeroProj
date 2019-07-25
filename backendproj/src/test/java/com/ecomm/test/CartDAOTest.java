package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;

public class CartDAOTest {

	static CartDAO cartDAO;
	
	@BeforeClass
	
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		cartDAO = (CartDAO) context.getBean("cartDAO");
	}
	
	

	@Test       
	public void addCartItemTest()
	{
		Cart cartItem = new Cart();
		cartItem.setProductId(340);
		cartItem.setProductName("Air Conditioner");
		cartItem.setQuantity(1);
		cartItem.setStatus("A");
		cartItem.setUsername("radhika");
		cartItem.setPrice(35000);
		
		assertTrue("Problem in Adding Cart", cartDAO.addCartItem(cartItem));
		
	}
	
	
	@Ignore
	@Test
	public void deleteCartItemTest()
	{
		Cart cartItem = cartDAO.getCartItem(72);
		
		assertTrue("Problem in Deleting Cart", cartDAO.deleteCartItem(cartItem));
		
	}
	
	
	@Ignore
	@Test
	public void updateCartItemTest()
	{
		Cart cartItem = cartDAO.getCartItem(72);
		cartItem.setQuantity(1);
		assertTrue("Problem in Deleting Cart", cartDAO.updateCartItem(cartItem));
		
	}
	
	@Ignore
	@Test
	public void displayCartItemTest()
	{
		List <Cart> listCartItems = cartDAO.listCartItems("RR");
		assertTrue("Problem in Display the Cart", listCartItems.size()>0);
		
		for (Cart cartItem:listCartItems)
		{
		System.out.print("\n");
		System.out.print(cartItem.getCartItemId()+"  ");
		System.out.print(cartItem.getProductName()+"  ");
		System.out.println(cartItem.getQuantity()+"  ");
		System.out.println(cartItem.getPrice());
		System.out.print("\n");
		
		}
	}

}
