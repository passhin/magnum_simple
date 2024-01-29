package com.company.dao;

import java.util.List;

import com.company.dto.UserIdDto;

@MyDao
public interface UserIdDao {
	public UserIdDto login(UserIdDto dto);   //���� �α���

	public int insert(UserIdDto dto);   //ȸ������

	public int update(UserIdDto dto);   //������������

	public int delete(UserIdDto dto);    //�������� ����

	public UserIdDto read(UserIdDto dto);   //idã��,��й�ȣ ã��  

	public List<UserIdDto> readAll();   //��ü ����Ʈ
	
	public List<UserIdDto> adminlist();  //�����ڷα��ν� ����� ����Ʈ
	
	public int adminpw(UserIdDto dto);   //������ ��й�ȣ Ȯ��
	
	public int admindelete(UserIdDto dto);  //�����ڷα��ν� ����� ����
	
	public int adminupdate(UserIdDto dto);  //������ �α��ν� ����� ��й�ȣ ��������
	
	public UserIdDto userread(UserIdDto dto); //  ����� id������ ����Ʈ �ҷ�����
	
	public boolean idcheck(UserIdDto dto);  //id�ߺ�üũȮ��
}
