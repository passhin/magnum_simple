package com.company.dao;

import java.util.List;
import java.util.Map;

import com.company.dto.DateCourseDto;
//import com.company.dto.CategoryDto;
import com.company.dto.DateDto;
import com.company.dto.FranchiseDto;

@MyDao
public interface DateDao {
	public int insertcourse(DateCourseDto dto); 				//데이트 코스 입력 함수
	public int insertlist(DateDto dto);							//데이트 리스트 입력 함수
	public int deletecourse(DateCourseDto dto);					//데이트 코스 삭제 함수
	public int deletelist(DateDto dto);							//데이트 리스트 삭제 함수
	public int updatecourse(DateCourseDto dto);					//1차,2차,3차 구분해주는 함수
	public int updatedcnt(int dno);								//코스갯수 업데이트
	
	public DateDto maxDno();									//가장 최신 데이트 리스트 번호 호출 함수
	
	public List <DateCourseDto> outlist(int dno);				//데이트 리스트에 있는 상세 데이트코스 출력 함수
	public List<DateCourseDto> resultlist(int mno);				//데이트 리스트 결과화면
	public List<DateCourseDto> course(DateCourseDto dto);		//데이트 코스 출력할 때 필요한 함수
	public List<DateCourseDto> readCourse(DateCourseDto dto);	//데이트 코스 삽입에 필요한 함수
	public List<FranchiseDto> readfranchise(FranchiseDto dto);	//가맹점 리스트 출력	
	public List<DateDto> readlist(DateDto dto);					//데이트 리스트 출력
	public List<DateDto> readAll(Map<String,String> para);		//지하철 / 카테고리 호출 함수
	
}
