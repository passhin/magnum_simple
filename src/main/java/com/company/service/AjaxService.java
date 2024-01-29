package com.company.service;

import java.util.List;
import java.util.Map;

import com.company.dto.FranDto;

public interface AjaxService {
	
	// list가져옴.
		public List<FranDto> listmn1(FranDto dto);

	// 지하철 list가져옴.
		public List<FranDto> listmn2(FranDto dto);
}
