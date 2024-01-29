package com.company.controller;

import java.util.HashMap; 
 
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.HLDto;
import com.company.dto.HeartDto;
import com.company.service.HLService;

 

@Controller
public class HLController {

	@Autowired HLService service;
	
	@RequestMapping(value="/myheartList", method=RequestMethod.GET)
	public String myHeartList(Model model,  HttpSession session) {
		System.out.println("-------- /myheart/List 진입");
			//int userId = session.getAttribute("uno");
		 int userId = 2; // �떎�젣 �궗�슜�옄 ID濡� 援먯껜
		 Map<String, Object> dataList = readAll(userId); // �뜲�씠�꽣瑜� �씫�뼱�샂
		    model.addAttribute("list", dataList); // 
		//�넃�넃�넃�넃�넃�넃�꽭�뀡�뿉�꽌 援ы븯�뒗嫄몃줈 蹂�寃쏀븯湲� @@@@@@@@@@@@@@@@@@@ readAll(2);
			return "../../WEB-INF/views/hayun/myHeartList";
	} 
	
	@ResponseBody
	@RequestMapping(value="/myheartReadAll" , method=RequestMethod.GET)
		public Map<String, Object> readAll(int dto){
		System.out.println("-------- /myheart/readAll 진입"+dto); 
			Map<String, Object> list = new HashMap<>();
			list.put("list", service.readAll(dto));
			System.out.println(list);
			return list;
	}
	
	@ResponseBody
	@RequestMapping(value="/delHeartList" ,method=RequestMethod.GET)
		public Map<String, Object> delHeartList(HLDto dto){
		System.out.println("--------- /delHeartList 진입 : " + dto);
		Map<String , Object>result= new HashMap<>();
		result.put("result", service.delHeartList(dto));
		return result;
	}
	
 
	 
}
