package com.company.dao;

import java.util.List;
import java.util.Map;

import com.company.dto.DateCourseDto;
//import com.company.dto.CategoryDto;
import com.company.dto.DateDto;
import com.company.dto.FranchiseDto;

@MyDao
public interface DateDao {
	public int insertcourse(DateCourseDto dto); 				//����Ʈ �ڽ� �Է� �Լ�
	public int insertlist(DateDto dto);							//����Ʈ ����Ʈ �Է� �Լ�
	public int deletecourse(DateCourseDto dto);					//����Ʈ �ڽ� ���� �Լ�
	public int deletelist(DateDto dto);							//����Ʈ ����Ʈ ���� �Լ�
	public int updatecourse(DateCourseDto dto);					//1��,2��,3�� �������ִ� �Լ�
	public int updatedcnt(int dno);								//�ڽ����� ������Ʈ
	
	public DateDto maxDno();									//���� �ֽ� ����Ʈ ����Ʈ ��ȣ ȣ�� �Լ�
	
	public List <DateCourseDto> outlist(int dno);				//����Ʈ ����Ʈ�� �ִ� �� ����Ʈ�ڽ� ��� �Լ�
	public List<DateCourseDto> resultlist(int mno);				//����Ʈ ����Ʈ ���ȭ��
	public List<DateCourseDto> course(DateCourseDto dto);		//����Ʈ �ڽ� ����� �� �ʿ��� �Լ�
	public List<DateCourseDto> readCourse(DateCourseDto dto);	//����Ʈ �ڽ� ���Կ� �ʿ��� �Լ�
	public List<FranchiseDto> readfranchise(FranchiseDto dto);	//������ ����Ʈ ���	
	public List<DateDto> readlist(DateDto dto);					//����Ʈ ����Ʈ ���
	public List<DateDto> readAll(Map<String,String> para);		//����ö / ī�װ� ȣ�� �Լ�
	
}
