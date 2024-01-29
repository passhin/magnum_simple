package com.company.service;

import java.util.List;
import java.util.Map;

import com.company.dto.FranDto;
import com.company.dto.PagingDto;

public interface FranService {

	// list가져옴.
	public List<FranDto> listCnt1(Map<String, Integer> para);

	// paging
	public PagingDto paging1(int pstartno);

	// 지하철 list가져옴.
	public List<FranDto> listCnt2(Map<String, Integer> para);

	// 지하철 paging
	public PagingDto paging2(int pstartno);

	public int insert(FranDto dto);

	public int update(FranDto dto);

	public int delete(int mno);

	public FranDto read(int fno);
//	public List<FranDto> read(int fno);

	public List<FranDto> read4();
}
