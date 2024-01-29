package com.company.dao;

import com.company.dto.HeartDto;

@MyDao
public interface HeartDao {
	public HeartDto checkHeart(HeartDto dto);
	public int insertHeart(HeartDto dto);
	public int delHeart(HeartDto dto); 
	public HeartDto cntHeartCustomer(HeartDto dto);
	 
}
