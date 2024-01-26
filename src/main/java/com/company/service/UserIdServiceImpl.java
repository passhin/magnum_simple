package com.company.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.UserIdDao;
import com.company.dto.UserIdDto;

@Service
public class UserIdServiceImpl implements UserIdService{
@Autowired
UserIdDao dao;
	@Override
	public int insert(UserIdDto dto) {
		try {
			dto.setIp(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {
			
			e.printStackTrace();
		}
		return dao.insert(dto);
	}

	@Override
	public int update(UserIdDto dto) {
		
		return dao.update(dto);
	}

	@Override
	public int delete(UserIdDto dto) {
		return dao.delete(dto);
	}

	@Override
	public UserIdDto read(UserIdDto dto) {
		return dao.read(dto);
	}

	@Override
	public List<UserIdDto> readAll() {
		return dao.readAll();
	}


	@Override
	public List<UserIdDto> adminlist() {
		return dao.adminlist();
	}

	@Override
	public int adminpw(UserIdDto dto) {
		return dao.adminpw(dto);
	}

	@Override
	public int admindelete(UserIdDto dto) {
		return dao.admindelete(dto);
	}

	@Override
	public int adminupdate(UserIdDto dto) {
		return dao.adminupdate(dto);
	}

	@Override
	public UserIdDto login(UserIdDto dto) {
		return dao.login(dto);
	}

	@Override
	public UserIdDto userread(UserIdDto dto) {
		return dao.userread(dto);
	}

	@Override
	public boolean idcheck(UserIdDto dto) {
		return dao.idcheck(dto);
	}

}
