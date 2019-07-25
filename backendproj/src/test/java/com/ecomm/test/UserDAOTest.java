package com.ecomm.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest 
{
	static UserDAO userDAO; 
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");
	}
	
	@Ignore
	@Test
	public void registerUserTest()
	{
		UserDetail user = new UserDetail();
		user.setUsername("ayan");
		user.setPassword("am924");
		user.setCustomerName("Ayan Mukherjee");
		user.setRole("ROLE_ADMIN");
		user.setEnabled(true);
		user.setAddress("West Bengal");
		
		assertTrue("Problem in Adding User", userDAO.registerUser(user));
		System.out.println("\n");
		System.out.println("user \""+user.getUsername()+"\" detail will be stored in database ");
		System.out.println("\n");
	}
	
	
	@Test
	public void updateUserTest()
	{
		
		UserDetail user = userDAO.getUser("priya");   // getUser means it will get Username from DataBase
		user.setPassword("EV");
		
		assertTrue("Problem in updating user", userDAO.updateUser(user));
		
		System.out.println("\n");
		System.out.println("**********    User \"" + user.getUsername() + "\" Password Will be Changed    *********");
		System.out.println("\n");
		
	}


}
