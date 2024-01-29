package com.company.service;

import java.util.List;

import com.company.dto.ReviewDto;

public interface ReviewService {
	public int insert(ReviewDto dto);  
	public List<ReviewDto> readAll(int mno);
	public ReviewDto cntRead (int dno);
	public ReviewDto avgRead (int dno);
	public int update(ReviewDto dto);
	public int delete(int rno);
}
