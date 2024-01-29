package com.company.dto;
 
public class ReviewDto {
	private int  rno, dno, r_star, uno ,cntRead;
	private String rdate, rcontent,id;
	private String avgRead;
 
	 
	@Override
	public String toString() {
		return "ReviewDto [rno=" + rno + ", dno=" + dno + ", r_star=" + r_star + ", uno=" + uno + ", avgRead=" + avgRead
				+ ", cntRead=" + cntRead + ", rdate=" + rdate + ", rcontent=" + rcontent + ", id=" + id + "]";
	}

 
	public ReviewDto(int rno, int dno, int r_star, int uno, String avgRead, int cntRead, String rdate, String rcontent,
			String id) {
		super();
		this.rno = rno;
		this.dno = dno;
		this.r_star = r_star;
		this.uno = uno;
		this.avgRead = avgRead;
		this.cntRead = cntRead;
		this.rdate = rdate;
		this.rcontent = rcontent;
		this.id = id;
	}
 
	

	public void setAvgRead(double avgRead) {
		this.avgRead =String.format("%.1f",avgRead); 
	}
 
 public String getAvgRead() { 
 
		return avgRead;
	} 
  

	public int getCntRead() {
		return cntRead;
	}
 
	public void setCntRead(int cntRead) {
		this.cntRead = cntRead;
	} 

	public ReviewDto() {
		super();
	}
 

	public int getRno() {
		return rno;
	}
 

	public void setRno(int rno) {
		this.rno = rno;
	} 

	public int getDno() {
		return dno;
	}

 

	public void setDno(int dno) {
		this.dno = dno;
	}
 

	public int getR_star() {
		return r_star;
	}

 
	public void setR_star(int r_star) {
		this.r_star = r_star;
	}
 

	public int getUno() {
		return uno;
	}
 
	public void setUno(int uno) {
		this.uno = uno;
	}

 
	public String getRdate() {
		return rdate;
	}

 
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
 
	public String getRcontent() {
		return rcontent;
	}

 
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
 
	public String getId() {
		return id;
	}
 

	public void setId(String id) {
		this.id = id;
	}

  
	
}
