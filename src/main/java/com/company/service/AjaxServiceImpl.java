package com.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.AjaxDao;
import com.company.dao.ImagesDao;
import com.company.dto.FranDto;

@Service
public class AjaxServiceImpl implements AjaxService {
	
	@Autowired
	AjaxDao dao;
	@Autowired
	ImagesDao idao;
	
	// list가져옴.
		public List<FranDto> listmn1(FranDto dto){
			return dao.listmn1(dto);
		};

	// 지하철 list가져옴.
		public List<FranDto> listmn2(FranDto dto){
			return dao.listmn2(dto);
		};
}
