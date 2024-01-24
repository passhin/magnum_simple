package com.company.service;

import java.util.List;
import java.util.Map;

import com.company.dto.DateCourseDto;
import com.company.dto.DateDto;
import com.company.dto.FranchiseDto;

public interface DService {
	public int insertcourse(DateCourseDto dto);
	public int insertlist(DateDto dto);
	public int deletecourse(DateCourseDto dto);
	
	public DateDto MaxDno();
	
	public List<FranchiseDto> readFran(int fno);
	public List<FranchiseDto> readfranchise(FranchiseDto dto);	
	public List<DateDto> readlist(DateDto dto);
	public List<DateDto>delete(Map<String,String> para);
	public List<DateDto> readAll(Map<String,String> para);
}
