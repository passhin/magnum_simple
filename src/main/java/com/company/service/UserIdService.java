package com.company.service;

import java.util.List;

import com.company.dto.UserIdDto;

public interface UserIdService {
	public UserIdDto login(UserIdDto dto);

	public int insert(UserIdDto dto);

	public int update(UserIdDto dto);

	public int delete(UserIdDto dto);

	public UserIdDto read(UserIdDto dto);

	public List<UserIdDto> readAll();
	
	public List<UserIdDto> adminlist();
	
	public int adminpw(UserIdDto dto);
	
	public int admindelete(UserIdDto dto);
	
	public int adminupdate(UserIdDto dto);
	
	public UserIdDto userread(UserIdDto dto);
	
	public boolean idcheck(UserIdDto dto);
}
