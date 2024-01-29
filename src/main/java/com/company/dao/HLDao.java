package com.company.dao;

import java.util.List;

import com.company.dto.HLDto;

@MyDao
public interface HLDao {
	public  List<HLDto> readAll (int uno);
	public int delHeartList(HLDto dto);

}
