package com.company.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.FranDto;
import com.company.dto.ListResultDto;
import com.company.service.FranService;
import com.company.service.ImagesService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class FranController {

	@Autowired
	FranService fservice;

	@Autowired
	ImagesService iservice;
	
	@RequestMapping(value = "/list.fran1", method = RequestMethod.GET)
	public String list1(@RequestParam(value = "pstartno", defaultValue = "0") int pstartno, Model model) {
		Map<String, Integer> para = new HashMap<>();
		ListResultDto resultDto = fservice.listCnt1(para);
		List<Object> combinedList = new ArrayList<>();
		combinedList.addAll(resultDto.getFranList());
		combinedList.addAll(resultDto.getImagesList());
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10); // 5 10 20
		model.addAttribute("list", combinedList);
		model.addAttribute("paging", fservice.paging1(pstartno));
		return "sim/fran";
		
	}

	@RequestMapping(value = "/list.fran2", method = RequestMethod.GET)
	public String list2(@RequestParam(value = "pstartno", defaultValue = "0") int pstartno, Model model) {
		Map<String, Integer> para = new HashMap<>();
		para.put("pstartno", pstartno);
		para.put("onepagelimit", 10); // 5 10 20
		model.addAttribute("list", fservice.listCnt2(para));
		model.addAttribute("paging", fservice.paging2(pstartno));
		return "sim/fran";
	}

	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public String inquiry() {
		// 泥섎━�빐二쇰뒗
		return "sim/inquiry";
	}

	@RequestMapping(value = "/fran", method = RequestMethod.GET)
	public String list() {
		// 泥섎━�빐二쇰뒗
		return "sim/fran";
	}

	@RequestMapping(value = "/franReadAll", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> reaadAll() {
		Map<String, Object> result = new HashMap<>();
		result.put("result", fservice.readAll());

		return result;
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