package com.company.dto;

 
public class HLDto {
	private String dtitle,fname, mname, hdate;
	private int dcnt, uno, dno;
	public HLDto(String dtitle, String fname, String mname, String hdate, int dcnt, int uno, int dno) {
		super();
		this.dtitle = dtitle;
		this.fname = fname;
		this.mname = mname;
		this.hdate = hdate;
		this.dcnt = dcnt;
		this.uno = uno;
		this.dno = dno;
	}
	public HLDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getDtitle() {
		return dtitle;
	}
	public void setDtitle(String dtitle) {
		this.dtitle = dtitle;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getHdate() {
		return hdate;
	}
	public void setHdate(String hdate) {
		this.hdate = hdate;
	}
	public int getDcnt() {
		return dcnt;
	}
	public void setDcnt(int dcnt) {
		this.dcnt = dcnt;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	
	
 
}
