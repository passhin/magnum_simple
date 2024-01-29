package com.company.dao;
 

import java.util.List;

import com.company.dto.ReviewDto; 

@MyDao
public interface ReviewDao {
		public int insert(ReviewDto dto); 
		public List<ReviewDto> readAll(int dno); 
		public ReviewDto avgRead(int dno);
		public ReviewDto cntRead(int dno);
		public int select(ReviewDto dto);
		public int update(ReviewDto dto);
		public int delete(int mno);
}
