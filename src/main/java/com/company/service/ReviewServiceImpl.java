package com.company.service;

import java.util.List; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.company.dao.ReviewDao;
import com.company.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired ReviewDao dao;
	@Override
	public int insert(ReviewDto dto) {
		return dao.insert(dto);
	}

	@Override
	public List<ReviewDto> readAll(int dno) {
		return dao.readAll(dno);
	}

	@Override
	public int update(ReviewDto dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(int rno) {
		return dao.delete(rno);
	}

	@Override
	public ReviewDto cntRead(int dno) {
		return dao.cntRead(dno);
	}

	@Override
	public ReviewDto avgRead(int dno) {
		return dao.avgRead(dno);
	}
}
