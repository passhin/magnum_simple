package com.company.service;

import java.util.List;

import com.company.dto.ImagesDto;

public interface ImagesService {
	public int insert1(ImagesDto dto);
	public int insert2(ImagesDto dto);
	public int update1(ImagesDto dto);
	public int update2(ImagesDto dto);
	public int update3(ImagesDto dto);
	public int update4(ImagesDto dto);
	public int delete(int fno);
	
	public List<ImagesDto> read();
	public List<ImagesDto> readAll();
}
