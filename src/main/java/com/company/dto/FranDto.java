package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class FranDto {
	private int fno, mno, cost, cnum, hit;
	private String fname, fdate, starttime, endtime, address, content, phone, images;
}
