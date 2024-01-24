package com.company.service;

import java.util.List;
import java.util.Map;

import com.company.dto.FranDto;
import com.company.dto.ListResultDto;
import com.company.dto.PagingDto;

public interface FranService {

	// list가져옴.
	public ListResultDto listCnt1(Map<String, Integer> para);

	// paging
	public PagingDto paging1(int pstartno);

	// 지하철 list가져옴.
	public ListResultDto listCnt2(Map<String, Integer> para);

	// 지하철 paging
	public PagingDto paging2(int pstartno);

	public int insert(FranDto dto);

	public int update(FranDto dto);

	public int delete(int mno);

	public FranDto read(int mno);

	public FranDto read4();

	public List<FranDto> read10();

	public List<FranDto> readAll();
}
