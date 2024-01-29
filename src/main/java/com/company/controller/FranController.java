package com.company.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.FranDto;
import com.company.service.AjaxService;
import com.company.service.FranService;
import com.company.service.ImagesService;
import com.company.service.PagingService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FranController {

	@Autowired
	FranService fservice;

	@Autowired
	ImagesService iservice;

	@Autowired
	PagingService service;
	
	@Autowired
	AjaxService aservice;

	@RequestMapping(value = "/minquiry", method = RequestMethod.GET)
	public String main() {
		return "han/inquiry";
	}
	@RequestMapping(value = "/list.fran", method = RequestMethod.GET)
	public String list1(@RequestParam(value = "mno", defaultValue = "0") int mno,
			@RequestParam(value = "pstartno", defaultValue = "0") int pstartno,FranDto dto, Model model) {
		Map<String, Integer> para = new HashMap<>();
		//Map<String,Object> result = new HashMap<>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10); // 5 10 20
		model.addAttribute("read4", fservice.read4());
		//dto.setMno(mno);
		//result.put("result", fservice.listCnt1(para));
		//model.addAttribute("result",result);
		if(mno == 0) {
			model.addAttribute("list", fservice.listCnt1(para));
			model.addAttribute("paging", fservice.paging1(pstartno));
		}else {
			model.addAttribute("list", fservice.listCnt2(para));
			model.addAttribute("paging", fservice.paging2(pstartno));
		}
		return "han/fran";
	}
	
	
	@RequestMapping(value = "/list.mn", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> listmn(	@RequestParam(value = "mno", defaultValue = "0") int mno,FranDto dto) {
		Map<String,Object> result = new HashMap<>();
		System.out.println(mno);
		dto.setMno(mno);
		if(mno == 0) {
			result.put("result", aservice.listmn1(dto));
			System.out.println("if"+result);
		}else {
			result.put("result", aservice.listmn2(dto));
			System.out.println("else"+result);
		}
		return result;
	}
	 
/*
	@RequestMapping(value = "/list.fran2", method = RequestMethod.GET)
	public String list2(@RequestParam(value = "pstartno", defaultValue = "0") int pstartno, Model model) {
		Map<String, Integer> para = new HashMap<>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10); // 5 10 20
		model.addAttribute("list", fservice.listCnt2(para));
		model.addAttribute("paging", fservice.paging2(pstartno));
		return "han/fran";
	}
*/
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam int fno, Model model) {
		model.addAttribute("imgs",iservice.read(fno));
		model.addAttribute("dto",fservice.read(fno));
		return "han/read";
	}
	
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public String inquiry() {
		return "han/inquiry_view";
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@RequestParam int fno, Model model) {
		model.addAttribute("imgs",iservice.read(fno));
		model.addAttribute("dto",fservice.read(fno));
		return "han/update_view";
	}

	@RequestMapping(value = "/franInsert", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> insert(FranDto dto) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", fservice.insert(dto));

		return result;
	}

	@RequestMapping(value = "/franRead", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> read(int mno) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", fservice.read(mno));

		return result;
	}

	@RequestMapping(value = "/franUpdate", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> update(FranDto dto) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", fservice.update(dto));

		return result;
	}

	@RequestMapping(value = "/franDelete", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> delete(int mno) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", fservice.delete(mno));

		return result;
	}
}