package com.ecomm.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ecomm.dao.CartDAOImpl;
import com.ecomm.dao.CategoryDAOImpl;
import com.ecomm.dao.OrderDAOImpl;
import com.ecomm.dao.ProductDAOImpl;
import com.ecomm.dao.SupplierDAOImpl;
import com.ecomm.dao.UserDAOImpl;
import com.ecomm.model.Cart;
import com.ecomm.model.Category;
import com.ecomm.model.OrderDetail;
import com.ecomm.model.Product;
import com.ecomm.model.Supplier;
import com.ecomm.model.UserDetail;



@Configuration
@ComponentScan("com.ecomm")
@EnableTransactionManagement

public class DBConfig
{
	 @Bean(name="dataSource")
	 public DataSource getH2DataSource()
     {
     	DriverManagerDataSource dataSource = new DriverManagerDataSource();
     	dataSource.setDriverClassName("org.h2.Driver");
     	dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
     	dataSource.setUsername("sa");
     	dataSource.setPassword("sa");
     	System.out.println("=======Data source Object Created Successfully========");
     	return dataSource;
     }
	  
	 @Autowired
     @Bean(name="sessionFactory")
	 public SessionFactory getSessionFactory(DataSource dataSource)
     {  
     	Properties prop = new Properties();
     	prop.setProperty("hibernate.hbm2ddl.auto", "update");
     	prop.put("hibernate.show_sql", "true");
     	prop.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
     	
     	LocalSessionFactoryBuilder sessionBuilder= new LocalSessionFactoryBuilder(getH2DataSource());
    	
    	sessionBuilder.addProperties(prop);
     	sessionBuilder.addAnnotatedClass(Category.class);
     	sessionBuilder.addAnnotatedClass(Product.class);
     	sessionBuilder.addAnnotatedClass(UserDetail.class);
     	sessionBuilder.addAnnotatedClass(Supplier.class);
     	sessionBuilder.addAnnotatedClass(Cart.class);
     	sessionBuilder.addAnnotatedClass(OrderDetail.class);
     	
     	SessionFactory sessionFactory = sessionBuilder.buildSessionFactory();
     
     
     	System.out.println("=======SessionFactory Object Created Successfully========");
     	return sessionFactory;
     	
     }
	 
	 @Autowired 
     @Bean(name="txManager")
    public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
    {
     	HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
     	
     	System.out.println("=======HibernateTransaction Mangaer Object Created Successfully========");
     	
     	return transactionManager;
    }
	 
	 @Autowired
     @Bean(name="categoryDAO")
 	public CategoryDAOImpl getCategoryDAOImpl(SessionFactory sessionFactory)
 	{
 		System.out.println("=====CategoryDAO Object Created Successfully=======");
 		return new CategoryDAOImpl(sessionFactory);
 		
 	}
	 
	 
	 @Autowired
     @Bean(name="productDAO")
 	public ProductDAOImpl getProductDAOImpl(SessionFactory sessionFactory)
 	{
		 System.out.println("=====ProductDAO Object Created Successfully=======");
 		return new ProductDAOImpl(sessionFactory);
 		
 	}
	 
	 
	 @Autowired
     @Bean(name="userDAO")
 	public UserDAOImpl getUserDAOImpl(SessionFactory sessionFactory)
 	{
 		System.out.println("=====UserDAO Object Created Successfully=======");
 		return new UserDAOImpl(sessionFactory);
 		
 	}
	 
	 @Autowired
     @Bean(name="supplierDAO")
 	public SupplierDAOImpl getsupplierDAOImpl(SessionFactory sessionFactory)
 	{
 		System.out.println("=====SupplierDAO Object Created Successfully=======");
 		return new SupplierDAOImpl(sessionFactory);
 		
 	}
	 
	 @Autowired
     @Bean(name="cartDAO")
 	public CartDAOImpl getcartDAOImpl(SessionFactory sessionFactory)
 	{
 		System.out.println("=====CartDAO Object Created Successfully=======");
 		return new CartDAOImpl(sessionFactory);
 		
 	}
	 
	 
	 @Autowired
     @Bean(name="orderDAO")
 	public OrderDAOImpl getorderDAOImpl(SessionFactory sessionFactory)
 	{
 		System.out.println("=====OrderDeatilDAO Object Created Successfully=======");
 		return new OrderDAOImpl(sessionFactory);
 		
 	}
	 	 
}


