package com.company.controller;

import java.util.HashMap; 
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.HeartDto;
import com.company.service.HeartService;

@Controller
public class heartController {

	@Autowired HeartService service;
	
	@RequestMapping(value="/heart", method=RequestMethod.GET)
	public String heartBtn() {
		System.out.println("-------- /heart 진입");
		return "../../WEB-INF/views/hayun/hearts";
	} 
 
	@ResponseBody
	@RequestMapping(value="/checkHeart" , method=RequestMethod.GET)
		public Map<String, Object> checkHeart(HeartDto dto ){
		System.out.println("-------- /check 진입"+dto); 
			Map<String, Object> result = new HashMap<>();
			result.put("result", service.checkHeart(dto));
			
		 
			System.out.println(result);
			return result;
	} 
	
	@ResponseBody
	@RequestMapping(value="/nonlogincheck" , method=RequestMethod.GET)
		public Map<String, Object> nonlogincheck(HeartDto dto ){
		System.out.println("-------- /check 진입"+dto); 
			Map<String, Object> result = new HashMap<>();
			result.put("result", service.cntHeartCustomer(dto));
			
		 
			System.out.println(result);
			return result;
	} 
	
	@ResponseBody
	@RequestMapping(value="/insertHeart" , method=RequestMethod.GET)
	public Map<String, Object> insertHeart(HeartDto dto){
		System.out.println("--------- /heartInsert 진입 : " + dto);
		 Map<String, Object> result = new HashMap<>();
		 result.put("result", service.insertHeart(dto));
		 return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/delHeart" ,method=RequestMethod.GET)
		public Map<String, Object> delHeart(HeartDto dto){
		System.out.println("--------- /delHeart 진입 : " + dto);
		Map<String , Object>result= new HashMap<>();
		result.put("result", service.delHeart(dto));
		return result;
	}
}
