package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DateCourseDto {
	private int cno;
	private String name;
	private int course;
	private int dno;
	private int cnum;
	private int fno;
	private int mno;
	private int dcnt;
	private int cost;
	private String cdate;
	private String mname;
	private String fname;
	private String content;
	private String address;
	private String dtitle;
	private String ddate;
	private String starttime;
	private String endtime;
}
