package com.company.service;

import java.util.List; 
import com.company.dto.HLDto; 

public interface HLService {
	public  List<HLDto> readAll (int uno);
	public int delHeartList(HLDto dto);

}
