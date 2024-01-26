package com.company.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.DateCourseDto;
import com.company.dto.DateDto;
import com.company.dto.FranchiseDto;
import com.company.service.DService;

@Controller
public class Dcontroller {
	@Autowired
	DService service;

	@RequestMapping(value = "/DateList", method = RequestMethod.GET)
	public String DateList() {
		return "/simple/Datelist";
	}

	@RequestMapping(value = "/Date", method = RequestMethod.GET)
	public String Date(String title, Model model, DateDto dto) {
		model.addAttribute("dtitle", title);
		dto.setDtitle(title);
		dto.setUno(1);
		model.addAttribute("dto", service.insertlist(dto));
		return "/simple/Date";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> insert(Model model,int fno,int dno, DateCourseDto dto) {
		Map<String,Object> result=new HashMap<>();
		if(service.insertcourse(dto)>0) {
			dto.setFno(fno);
			dto.setDno(dno);
			result.put("result", service.readCourse(dto));
		}
		System.out.println(service.readCourse(dto));
		return result;
	}

	@RequestMapping(value = "/listout", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> listout(int cnum, int mno, FranchiseDto dto) {
		Map<String, Object> result = new HashMap<>();
		dto.setCnum(cnum);
		dto.setMno(mno);
		result.put("result", service.readfranchise(dto));
		return result;
	}

	@RequestMapping(value = "/coursedelete", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> Coursedelete(DateCourseDto dto,int dno, int cno) {
		Map<String,Object> result= new HashMap<>();		
		result.put("result", service.deletecourse(dto));
		return result;
	}	
	
	@RequestMapping(value = "/course", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> course(int fno,int dno, DateCourseDto dto) {
		Map<String,Object> result=new HashMap<>();
		result.put("result", service.course(dto));
		System.out.println(result);
		return result;
	}
	@RequestMapping(value = "/deleteview", method = RequestMethod.GET)
	public String Coursedelete(DateDto dto) {
		service.deletelist(dto);		
		return "/simple/list";
		//홈으로 변경예정
	}
	
	@RequestMapping(value = "/coursecomplete", method = RequestMethod.GET)
	public String Coursecomplete(Model model, int dno) {
		model.addAttribute("dto",dno);
		System.out.println(dno);
		return "/simple/list";
	}

}
