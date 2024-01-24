package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DateDto {
	private int dno;
	private String dtitle;
	private int dcnt;
	private int uno;
	private String ddate;
	private char dcom;
}
