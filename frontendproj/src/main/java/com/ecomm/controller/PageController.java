package com.ecomm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController 
{

	@RequestMapping("/login")
	public String showLoginPage()
	{
		return "Login";
	}
	
	@RequestMapping("/register")
	public String showRegisterPage()
	{
		return "Register";
	}
	
	@RequestMapping("/contactus")
	public String showcontactus()
	{
		
		return "contactus";
	}
	
	@RequestMapping("/aboutus")
	public String showaboutus()
	{
	
		return "aboutus";
	}
	@RequestMapping("/category")
	public String showCategoryPage()
	{
		return "Category";
	}

	@RequestMapping("/supplier")
	public String showSupplierPage()
	{
		return "Supplier";
		
	}
		
}
