package com.company.test1;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.dao.DateDao;
import com.company.dto.DateDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class Test1_dao {
	@Autowired
	ApplicationContext context;
	
	@Autowired
	DateDao dao;
	
	@Test
	@Ignore
	public void test1() {
		System.out.println(context);
	}
	
	
	@Test
	//@Ignore
	public void test2() {
		DateDto dto = new DateDto();
		//dto.setDno1(3);
		dto.setDtitle("title");
		dto.setUno(1);
		System.out.println(dao
				.insertlist(dto));
	}
}
