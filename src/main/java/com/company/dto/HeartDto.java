package com.company.dto;

 
public class HeartDto {
		private int hno,uno,dno,isHeart,cntHeart,cntHeartCustomer;	
		public int getCntHeartCustomer() {
			return cntHeartCustomer;
		}
		public void setCntHeartCustomer(int cntHeartCustomer) {
			this.cntHeartCustomer = cntHeartCustomer;
		}
		private String hdate;
		public HeartDto() {
			super();
			// TODO Auto-generated constructor stub
		}
		public HeartDto(int hno, int uno, int dno, int isHeart, int cntHeart, String hdate) {
			super();
			this.hno = hno;
			this.uno = uno;
			this.dno = dno;
			this.isHeart = isHeart;
			this.cntHeart = cntHeart;
			this.hdate = hdate;
		}
		@Override
		public String toString() {
			return "HeartDto [hno=" + hno + ", uno=" + uno + ", dno=" + dno + ", isHeart=" + isHeart + ", cntHeart="
					+ cntHeart + ", hdate=" + hdate + "]";
		}
		public int getHno() {
			return hno;
		}
		public void setHno(int hno) {
			this.hno = hno;
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
		public int getIsHeart() {
			return isHeart;
		}
		public void setIsHeart(int isHeart) {
			this.isHeart = isHeart;
		}
		public int getCntHeart() {
			return cntHeart;
		}
		public void setCntHeart(int cntHeart) {
			this.cntHeart = cntHeart;
		}
		public String getHdate() {
			return hdate;
		}
		public void setHdate(String hdate) {
			this.hdate = hdate;
		}
		
}
