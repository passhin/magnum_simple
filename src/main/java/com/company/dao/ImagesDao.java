package com.company.dao;

import java.util.List;

import com.company.dto.ImagesDto;

@MyDao
public interface ImagesDao {
	public int insert1(ImagesDto dto);
	public int insert2(ImagesDto dto);
	public int update1(ImagesDto dto);
	public int update2(ImagesDto dto);
	public int update3(ImagesDto dto);
	public int update4(ImagesDto dto);
	public int delete(int fno);
	
	public List<ImagesDto> readimg();
	public List<ImagesDto> readAll();
}
