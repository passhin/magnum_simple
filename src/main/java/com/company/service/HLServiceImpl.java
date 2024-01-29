package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.HLDao;
import com.company.dto.HLDto;

@Service
public class HLServiceImpl implements HLService{
	@Autowired HLDao dao;
	@Override
	public List<HLDto> readAll(int uno) {
		return dao.readAll(uno);
	}
	@Override
	public int delHeartList(HLDto dto) {
 		return dao.delHeartList(dto);
	}

}
