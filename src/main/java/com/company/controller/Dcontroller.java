package com.company.controller;

import java.util.HashMap;
import java.util.Map;

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
	public Map<String,Object> insert(Model model,int fno, DateCourseDto dto) {
		Map<String,Object> result=new HashMap<>();
		service.insertcourse(dto);
		result.put("result", service.readFran(fno));
		System.out.println(result);
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
	public Map<String,Object> Coursedelete(Map<String, String> para) {
		Map<String,Object> result= new HashMap<>();
		
		result.put("result", service.deletecourse(null));
		return result;
	}

	@RequestMapping(value = "/coursecomplete", method = RequestMethod.GET)
	public String Coursecomplete(Map<String, String> para) {

		return "/simple/list";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String Review(Map<String, String> para) {
		System.out.println("test");
		return "/simple/detail";
	}
}
