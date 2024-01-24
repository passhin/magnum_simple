package com.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.DateDao;
import com.company.dto.DateCourseDto;
import com.company.dto.DateDto;
import com.company.dto.FranchiseDto;

@Service("dService")
public class DServiceImpl implements DService{
	@Autowired
	DateDao dao;
	
	@Override
	public int insertcourse(DateCourseDto dto) {
		return dao.insertcourse(dto);
	}

	@Override
	public List<FranchiseDto> readFran(int fno) {
		return dao.readFran(fno);
	}

	@Override
	public int insertlist(DateDto dto) {
		/*
	 		1. max(dno)  찾기		
			2. insert 확인
			3. 1번에서 찾은값 
		 */
		int result=0;
		if(dao.insertlist(dto)>0) {
			return dao.maxDno().getDno();
		}
		return result;
		
	}

	@Override
	public int deletecourse(DateCourseDto dto) {
		return dao.deletecourse(dto);
	}

	@Override
	public List<FranchiseDto> readfranchise(FranchiseDto dto) {
		return dao.readfranchise(dto);
	}

	@Override
	public List<DateDto> readlist(DateDto dto) {
		return dao.readlist(dto);
	}

	@Override
	public List<DateDto> delete(Map<String, String> para) {
		return dao.delete(para);
	}

	@Override
	public List<DateDto> readAll(Map<String, String> para) {
		return dao.readAll(para);
	}

	@Override
	public DateDto MaxDno() {		
		return dao.maxDno();
	}	
	
}
