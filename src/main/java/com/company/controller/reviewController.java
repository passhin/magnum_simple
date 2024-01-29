package com.company.controller;

import java.util.HashMap; 
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.ReviewDto;
import com.company.service.ReviewService;

@Controller
public class reviewController {
 
		@Autowired ReviewService service;
		
		 
		@RequestMapping(value="/review" , method=RequestMethod.GET)
		public String list(){ 
			return "../../WEB-INF/views/hayun/reviews";
		}
		
		@ResponseBody
		@RequestMapping(value="/reviewReadAll" , method=RequestMethod.GET) 
		public Map<String, Object> readAll(@RequestParam("dno") Integer dno) { 
			Map<String, Object> result= new HashMap<>(); 
			 result.put("result", service.readAll(dno));
				
			return result;
		}
		
		@ResponseBody
		@RequestMapping(value="/reviewInsert" , method= {RequestMethod.POST, RequestMethod.GET})
		public Map<String,Object> insert(ReviewDto dto){
			System.out.println("insert dto ------------" + dto);
			Map<String, Object> result= new HashMap<>();
			result.put("result", service.insert(dto));
			System.out.println("Insert..........." + result);
			return result;
		}

		@ResponseBody
		@RequestMapping(value="/reviewUpdate" , method=RequestMethod.POST)
		public Map<String,Object> update(ReviewDto dto){
			Map<String, Object> result= new HashMap<>();
			result.put("result", service.update(dto) );
			return result;
		}
		
		@ResponseBody
		@RequestMapping(value="/reviewDelete" , method=RequestMethod.GET)
		public Map<String,Object> delete(int rno){
			Map<String, Object> result= new HashMap<>();
			result.put("result", service.delete(rno));
			return result;
		}
		
		
	 

}
