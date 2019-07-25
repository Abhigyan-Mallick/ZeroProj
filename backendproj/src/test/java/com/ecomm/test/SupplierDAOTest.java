package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Supplier;

public class SupplierDAOTest {
		
	static SupplierDAO supplierDAO;

	@BeforeClass
	
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
	}
	

	@Test       
	@Ignore
	public void addSupplierTest()
	{
		Supplier supplier = new Supplier();
		supplier.setSupplierName("Xiomi");
		supplier.setSupplierAddress("China");
		
		assertTrue("Problem in Adding Supplier", supplierDAO.addSupplier(supplier));
		
	}
	

	
	@Test
	public void deleteSupplierTest()
	{
		Supplier supplier = supplierDAO.getSupplier(52);
		
		assertTrue("Problem in Deleting Supplier", supplierDAO.deleteSupplier(supplier));
		
		System.out.print("\n" + supplier.getSupplierId()+"   that Supplier Details will be Deleted" + "\n");
	}

	
	
	@Ignore
	@Test
	public void updateSupplierTest()
	{
		Supplier supplier = supplierDAO.getSupplier(38);
		supplier.setSupplierName("RAM RAM");
		supplier.setSupplierAddress("GOA GOA");
		assertTrue("Problem in Updating the Supplier", supplierDAO.updateSupplier(supplier));
		
		System.out.print("\n" + supplier.getSupplierId()+"   that Supplier Details will be Updated" + "\n");
	}
	
	

	@Ignore
	@Test
	public void retrieveSuppliers()
	{
		List <Supplier> listSuppliers = supplierDAO.ListSuppliers();
		assertTrue("Problem in Retrieve the Supplier", listSuppliers.size()>0);
		
		for (Supplier supplier:listSuppliers)
		{
		System.out.print("\n");
		
		System.out.print(supplier.getSupplierId()+"    ");
		System.out.print(supplier. getSupplierName()+"    ");
		System.out.println(supplier. getSupplierAddress());
		
		System.out.print("\n");
		
		}
	}

}
