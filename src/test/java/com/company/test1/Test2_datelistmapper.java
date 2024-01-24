package com.company.test1;

import java.util.HashMap;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.dao.DateDao;
import com.company.dto.DateCourseDto;
import com.company.dto.DateDto;
import com.company.dto.FranchiseDto;
import com.company.service.DService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class Test2_datelistmapper {
	@Autowired
	DateDao dao;
	
	@Autowired
	DService service;
	
	@Test
	@Ignore
	public void test1() {
		Map<String, String> para = new HashMap<>();
		//para.put("table", "category");
		//para.put("table", "subway");
		para.put("table","franchise");
		log.info(""+dao.readAll(para));
		//readAll 체크 완료
	}
	@Test
	@Ignore
	public void test2() {
		Map<String, String> para = new HashMap<>();
		//para.put("table", "category");
		DateDto dto=new DateDto();
		dto.setDno(1);
		para.put("table", "datelist");
		para.put("keyword", "dno");
		log.info(""+dao.delete(para));
		//delete 체크 완료
	}
	@Test
	//@Ignore
	public void test3() {
		DateDto dto=new DateDto();
		//dto.setDno(service.maxDno());
		dto.setUno(1);
		dto.setDtitle("강남 첫여행");
		//log.info(service.maxDno());
		//insertlist 체크 완료
	}		
	
	@Test
	@Ignore
	public void test4() {
		DateCourseDto dto=new DateCourseDto();
		dto.setDno(2);
		dto.setCourse(2);
		dto.setCnum(1);
		dto.setMno(23);
		dto.setFno(53);
		
		log.info(dao.insertcourse(dto));
		//insertcourse 체크완료
	}
	
	@Test
	@Ignore
	public void test5() {
		DateCourseDto dto=new DateCourseDto();
		dto.setCno(5);
		dto.setDno(2);
		log.info(dao.deletecourse(dto));
		//deletecourse 체크완료
	}
	
	@Test
	@Ignore
	public void test6() {
		FranchiseDto dto=new FranchiseDto();
		dto.setMno(9);
		dto.setCnum(1);
		
		log.info(dao.readfranchise(dto));		
		//readfranchise 체크완료
	}
	@Test
	@Ignore
	public void test7() {
		DateDto dto = new DateDto();
		
		dto.setDno(3);
		
		log.info(dao.readlist(dto));		
		//readlist 체크완료
	}
	
}
