package com.company.service;

import com.company.dto.HeartDto;

public interface HeartService {
		public HeartDto checkHeart(HeartDto dto);
		public int insertHeart(HeartDto dto);
		public int delHeart(HeartDto dto);
		public HeartDto cntHeartCustomer(HeartDto dto);

}
