package com.company.dao;

import java.util.List;
import java.util.Map;

import com.company.dto.FranDto;

@MyDao
public interface FranDao {
	
    public int  listtotal1();   //전체갯수
    public List<FranDto>  listCnt1(Map<String, Integer> para);
    public int  listtotal2();   //지하철별 전체갯수
    public List<FranDto>  listCnt2(Map<String, Integer> para);
    
	public int insert(FranDto dto);
	public int update(FranDto dto);
	public int delete(int fno);
	
	public FranDto read(int fno);
	public FranDto read4();
	
	public List<FranDto> read10();
	public List<FranDto> readAll();
}
