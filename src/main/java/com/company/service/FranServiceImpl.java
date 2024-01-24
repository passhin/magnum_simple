package com.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.FranDao;
import com.company.dao.ImagesDao;
import com.company.dto.FranDto;
import com.company.dto.ImagesDto;
import com.company.dto.ListResultDto;
import com.company.dto.PagingDto;

@Service
public class FranServiceImpl implements FranService {

	
	@Autowired  FranDao dao;
	@Autowired  ImagesDao idao;
	// @Autowired  PagingDto dto;
	// 10개씩 리스트
	@Override public ListResultDto listCnt1(Map<String, Integer> para) { 
		List<FranDto> franList = dao.listCnt2(para);
		List<ImagesDto> imagesList = idao.readimg();
		 // 두 개의 값을 담을 수 있는 클래스를 생성
	    ListResultDto resultDto = new ListResultDto(franList, imagesList);
	    
		return resultDto;
	} 
	// 페이징
	@Override public PagingDto paging1(int pstartno) {
		return new PagingDto(dao.listtotal1() ,pstartno );
	}
	// 지하철별 10개씩 리스트
	@Override public ListResultDto listCnt2(Map<String, Integer> para) { 
		List<FranDto> franList = dao.listCnt2(para);
		List<ImagesDto> imagesList = idao.readimg();
		 // 두 개의 값을 담을 수 있는 클래스를 생성
	    ListResultDto resultDto = new ListResultDto(franList, imagesList);
	    
		return resultDto; 
	} 
	// 지하철별 페이징
	@Override public PagingDto paging2(int pstartno) {
		return new PagingDto(dao.listtotal2() ,pstartno );
	}
	@Override
	public int insert(FranDto dto) { return dao.insert(dto); }
	@Override
	public int update(FranDto dto) { return dao.update(dto); }
	@Override
	public int delete(int mno) { return dao.delete(mno); }
	@Override
	public FranDto read(int mno) { return dao.read(mno); }
	@Override
	public FranDto read4() { return dao.read4(); }
	@Override
	public List<FranDto> read10() { return dao.read10(); }
	@Override
	public List<FranDto> readAll() { return dao.readAll(); }
}
