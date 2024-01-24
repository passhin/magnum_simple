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
	private String cdate;
	private int dno;
	private int cnum;
	private int fno;
	private int mno;
}
