package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.HeartDao;
import com.company.dto.HeartDto;

@Service
public class HeartServiceImpl implements HeartService {
		
	@Autowired HeartDao dao;
	
	@Override
	public HeartDto checkHeart(HeartDto dto) {
		return dao.checkHeart(dto);
	}

	@Override
	public int insertHeart(HeartDto dto) {
		return dao.insertHeart(dto);
	}

	@Override
	public int delHeart(HeartDto dto) {
		return dao.delHeart(dto);
	}

	@Override
	public HeartDto cntHeartCustomer(HeartDto dto) {
 		return dao.cntHeartCustomer(dto);
	}

}
