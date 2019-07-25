package com.ecomm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.ecomm.model.Product;

public class ProductDAOImpl implements ProductDAO
{
	@Autowired  // Object Automatically Created by this Annottaion
	SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory) 
	{
		this.sessionFactory=sessionFactory;
	}

	
	@Transactional
	public boolean addProduct(Product product)
	{
		try 
		{
			sessionFactory.getCurrentSession().save(product);
			return true;
		}
		
		catch (Exception e)
		{
			return false;	
		}

	}
	
	@Transactional
	public boolean deleteProduct(Product product) 
	{
		try 
		{
			sessionFactory.getCurrentSession().delete(product);
			return true;
		}
		
		catch (Exception e)
		{
			return false;	
		}
	}

	@Transactional
	public boolean updateProduct(Product product) 
	{
		try 
		{
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		
		catch (Exception e)
		{
			return false;	
		}
	}

	@Transactional
	public Product getProduct(int productId)
	{
		Session session = sessionFactory.openSession();
		Product product = (Product)session.get(Product.class, productId);
		//System.out.println(product.getProductName());
		session.close();
		return product;
	}

	@Transactional
	public List<Product> listProducts() 
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");    // import import org.hibernate.query.Query; to fix the error
		
		List <Product> listProducts = query.list(); 
		session.close();
		return listProducts;
	}

	@Transactional
	public List<Product> listProductByCategory(int categoryId)
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product where Category");    // import import org.hibernate.query.Query; to fix the error
		List <Product> listProducts = query.list(); 
		session.close();
		return listProducts;
	}

}
