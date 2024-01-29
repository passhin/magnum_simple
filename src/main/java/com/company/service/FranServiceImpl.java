package com.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.FranDao;
import com.company.dao.ImagesDao;
import com.company.dto.FranDto;
import com.company.dto.PagingDto;

@Service
public class FranServiceImpl implements FranService {

	@Autowired
	FranDao dao;
	@Autowired
	ImagesDao idao;

	// 10개씩 리스트
	@Override
	public List<FranDto> listCnt1(Map<String, Integer> para) {
		return dao.listCnt1(para);
	}

	// 페이징
	@Override
	public PagingDto paging1(int pstartno) {
		return new PagingDto(dao.listtotal1(), pstartno);
	}

	// 지하철별 10개씩 리스트
	@Override
	public List<FranDto> listCnt2(Map<String, Integer> para) {
		return dao.listCnt2(para);
	}

	// 지하철별 페이징
	@Override
	public PagingDto paging2(int pstartno) {
		return new PagingDto(dao.listtotal2(), pstartno);
	}

	@Override
	public int insert(FranDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int update(FranDto dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(int fno) {
		return dao.delete(fno);
	}

	@Override
	public FranDto read(int fno) {
		return dao.read(fno);
	}
//	@Override
//	public List<FranDto> read(int fno) {
//		return dao.read(fno);
//	}

	@Override
	public List<FranDto> read4() {
		return dao.read4();
	}
}
