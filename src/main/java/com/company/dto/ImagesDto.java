package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ImagesDto {
	private int ino,fno;
	private String iname1,idate;
	private String iname2;
	private String iname3;
	private String iname4;
}
