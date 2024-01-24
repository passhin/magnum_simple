package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.ImagesDao;
import com.company.dto.ImagesDto;

@Service
public class ImagesServiceImpl implements ImagesService {

	@Autowired ImagesDao dao;
	
	@Override
	public int insert1(ImagesDto dto) { return dao.insert1(dto); }
	@Override
	public int insert2(ImagesDto dto) { return dao.insert2(dto); }

	@Override
	public int update1(ImagesDto dto) { return dao.update1(dto); }
	@Override
	public int update2(ImagesDto dto) { return dao.update2(dto); }
	@Override
	public int update3(ImagesDto dto) { return dao.update3(dto); }
	@Override
	public int update4(ImagesDto dto) { return dao.update4(dto); }

	@Override
	public int delete(int fno) { return dao.delete(fno); }

	@Override
	public List<ImagesDto> read() { return dao.readAll(); }
	
	@Override
	public List<ImagesDto> readAll() { return dao.readAll(); }
}
