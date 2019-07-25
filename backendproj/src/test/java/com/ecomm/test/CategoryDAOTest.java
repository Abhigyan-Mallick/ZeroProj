package com.ecomm.test;

import static org.junit.Assert.*;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

public class CategoryDAOTest 
{

	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

	@Test       
	public void addCategoryTest()
	{
		Category category = new Category();
		//category.setCategoryId(41);
		category.setCategoryName("Womens Wear");
		category.setCategoryDesc("All kind of womens ethnic wear slawar or patiwala suit avialable here ");
		
		assertTrue("Problem in Adding Category", categoryDAO.addCategory(category));
	}
	
	@Ignore
	@Test
	public void deleteCategoryTest()
	{
		Category category = categoryDAO.getCategory(106);
		
		assertTrue("Problem in Deleting Category", categoryDAO.deleteCategory(category));
	}

	@Ignore
	@Test
	public void updateCategoryTest()
	{
		Category category = categoryDAO.getCategory(1);
		category.setCategoryDesc("All kind of brand new five star Fridges are avilable here");
		assertTrue("Problem in Updating the Category", categoryDAO.updateCategory(category));
	}

	@Ignore
	@Test
	public void retrieveCategories()
	{
		List <Category> listCategories = categoryDAO.ListCategories();
		assertTrue("Problem in Retrieve the Category", listCategories.size()>0);
		
		for (Category category:listCategories)
		{
		System.out.print(category.getCategoryId()+"    ");
		System.out.print(category.getCategoryName()+"    ");
		System.out.println(category.getCategoryDesc());
		}
	}
}
