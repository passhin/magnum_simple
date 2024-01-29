package com.company.dao;

import java.util.List;

import com.company.dto.UserIdDto;

@MyDao
public interface UserIdDao {
	public UserIdDto login(UserIdDto dto);   //세션 로그인

	public int insert(UserIdDto dto);   //회원가입

	public int update(UserIdDto dto);   //개인정보수정

	public int delete(UserIdDto dto);    //개인정보 삭제

	public UserIdDto read(UserIdDto dto);   //id찾기,비밀번호 찾기  

	public List<UserIdDto> readAll();   //전체 리스트
	
	public List<UserIdDto> adminlist();  //관리자로그인시 사용자 리스트
	
	public int adminpw(UserIdDto dto);   //관리자 비밀번호 확인
	
	public int admindelete(UserIdDto dto);  //관리자로그인시 사용자 삭제
	
	public int adminupdate(UserIdDto dto);  //관리자 로그인시 사용자 비밀번호 정보수정
	
	public UserIdDto userread(UserIdDto dto); //  사용자 id맞으면 리스트 불러오기
	
	public boolean idcheck(UserIdDto dto);  //id중복체크확인
}
