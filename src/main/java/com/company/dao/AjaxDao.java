package com.company.dao;

import java.util.List;

import com.company.dto.FranDto;

@MyDao
public interface AjaxDao {

    //전체갯수
    public List<FranDto> listmn1(FranDto dto);

    //지하철별 전체갯수
    public List<FranDto> listmn2(FranDto dto);

	public FranDto read(int fno);

}
