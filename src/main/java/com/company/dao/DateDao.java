package com.company.dao;

import java.util.List;
import java.util.Map;

import com.company.dto.DateCourseDto;
//import com.company.dto.CategoryDto;
import com.company.dto.DateDto;
import com.company.dto.FranchiseDto;

@MyDao
public interface DateDao {
	public int insertcourse(DateCourseDto dto);
	public int insertlist(DateDto dto);
	public int deletecourse(DateCourseDto dto);
	public int updatecourse(DateCourseDto dto);
	public int updateDno(DateDto dto);
	public DateDto maxDno();
	
	public List<FranchiseDto> readFran(int fno);
	public List<FranchiseDto> readfranchise(FranchiseDto dto);	
	public List<DateDto> readlist(DateDto dto);
	public List<DateDto>delete(Map<String,String> para);
	public List<DateDto> readAll(Map<String,String> para);
	
}
