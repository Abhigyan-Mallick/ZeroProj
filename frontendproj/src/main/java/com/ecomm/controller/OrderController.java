package com.ecomm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.OrderDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.OrderDetail;
import com.ecomm.model.UserDetail;

@Controller
public class OrderController
{
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	OrderDAO orderDAO;

	@RequestMapping(value="/checkout")
	public String checkout(Model m) 
	{
		    String username="RR";
		    
		    List<Cart> cartItemList=cartDAO.listCartItems(username);
		    m.addAttribute("cartItemList", cartItemList);
	        m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
	        
	    	UserDetail user=userDAO.getUser("RR");
			m.addAttribute("addr",user.getAddress());
			
		    return "OrderConfirm";
		
	}
	
	public int calcTotalAmount(List<Cart> cartItems)
	{
		 int totalAmount=0;
		 int count=0;
		 
		 
		 while(count<cartItems.size())
		 {
			 Cart cart=cartItems.get(count);
			 totalAmount=totalAmount+(cart.getPrice()*cart.getQuantity());
			 count++;
		 }
		 
		 return totalAmount; 
	 }

	@RequestMapping(value="/updateAddress",method=RequestMethod.POST)
	public String updateAddress(@RequestParam("addr")String address,Model m)
	{

		UserDetail user=userDAO.getUser("RR");	    
		user.setAddress(address);
		
		userDAO.updateUser(user);
		String username="RR";
		
		List<Cart> cartItemList=cartDAO.listCartItems(username);
	    
	    m.addAttribute("cartItemList", cartItemList);
	    m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
	    
	   	m.addAttribute("addr",user.getAddress());
		
	    return "OrderConfirm";
	}
	
	@RequestMapping(value="/payment")
	public String showPaymentPage(Model m)
	{
		String username="RR";
		List<Cart> cartItemList=cartDAO.listCartItems(username);
	    
	    m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
	    
		return "Payment";
		
	}
	

	@RequestMapping(value="/receipt")
	public String showReceipt(@RequestParam ("pmode")String pmode,Model m,HttpSession session) 
	{
		String username="RR";
		List<Cart> cartItemList=cartDAO.listCartItems(username);
		int totalShoppingAmount=this.calcTotalAmount(cartItemList);
	    
		OrderDetail order=new OrderDetail();
		order.setPaymentMode(pmode);
		order.setUsername(username);
		order.setTotalShoppingAmount(totalShoppingAmount);
		order.setOrderdate(new java.util.Date());
		orderDAO.paymentProcess(order);
		
		orderDAO.updateCartItemStatus(username,order.getOrderId());
		
		
		m.addAttribute("cartItemList", cartItemList);
	    m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));

		m.addAttribute("orderId", order.getOrderId());
		 m.addAttribute("pmode", pmode);
		 
		 UserDetail user = userDAO.getUser("RR");
		 m.addAttribute("addr", user.getAddress());
		  	 
		
	    session.setAttribute("cartsize",0);
	    
	    return "Receipt";
	    
	}
		
}