package com.ecomm.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="/login_success")
	public String loginSuccess(Model m, HttpSession session)
	{
		String page="TotalProductDisplay";
		boolean loggedIn=false;
		
		
		SecurityContext sContext = SecurityContextHolder.getContext();
		Authentication authentication = sContext.getAuthentication();
		
		String username = authentication.getName();
		
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles) 
		{
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				loggedIn = true;
				page = "AdminHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
				session.setAttribute("role",role.getAuthority());
			}
			
			else
			{
				loggedIn = true;
				page = "UserHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
				session.setAttribute("role",role.getAuthority());
			}
			
		}
		
		return page;
	}

	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req,HttpServletResponse res )
	{
		req.getSession(false).invalidate();
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
	       new	SecurityContextLogoutHandler().logout(req, res,auth);
	       req.getSession().setAttribute("loggedIn",false);   
		
		
		return "Login";
	}
	
	@RequestMapping("/registerUser")
	public String registerUser(@RequestParam("username")String username, @RequestParam("customername")String customername,@RequestParam("address")String address, @RequestParam("password")String password, Model m)
	{
		
		UserDetail userdetail=new UserDetail();
		
		userdetail.setCustomerName(customername);
		userdetail.setUsername(username);
		userdetail.setPassword(password);
		userdetail.setAddress(address);
		
		userdetail.setRole("ROLE_USER");
		userdetail.setEnabled(true);
	   
	    userDAO.registerUser(userdetail);
		
	    
	    System.out.println("Register Successfully");
	    
		return "Login";
	}
	
}
