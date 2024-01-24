package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FranchiseDto {
	private int fno;
	private String fname;
	private String fdate;
	private String starttime;
	private String endtime;
	private int cost;
	private int cnum;
	private int mno;
	private String address;
	private int hit;
	private String content;
	private String phone;
	private String cname;
	private String mname;
}
