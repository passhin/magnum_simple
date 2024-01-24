package com.company.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Component
public class PagingDto {
	private int  listtotal;   //1. 전체글   256  
	private int  onepagelimit;//2. 한페이지에 보여줄 게시물의 수  10   #
	private int  pagetotal;   //3. 총페이지계산  256/10=26  251/10=26
	private int  bottomlimit; //4. 하단에 페이지 나누기 수  #
	private int  pstartno;    //5. 페이지의 스타트 번호
	private int  current;     //6. 하단 현재번호
	private int  start;       //7. 하단 시작
    private int  end;         //8. 하단 끝	
    
    //private List<Object>  list;
	public PagingDto(int listtotal, int pstartno) {
		super();
		this.listtotal    = listtotal;   // 전체글   256
		this.onepagelimit = 10;
		this.pagetotal    = 
				(int) Math.ceil((double)listtotal/onepagelimit);
		this.bottomlimit  = 10;
		this.pstartno = pstartno;    
	
 
		this.current=
			(int) Math.ceil((pstartno+1)/(double)onepagelimit)	;     //6. 하단 현재번호  0/10
		this.start=  
			((int) Math.floor((this.current-1)/(double)bottomlimit))*bottomlimit + 1;       //7. 하단 시작
	    this.end = this.start+bottomlimit-1;         //8. 하단 끝	
	    if(pagetotal<end) {  this.end = pagetotal;}
	    // 256(26)  = 21+10-1 = 30
	}	
} 
/*
         0부터5개   (5부터 5개)
   <이전  1(0)     2           3  4 5 6 7 8 9 0  다음>
         
■ this.current   
         0부터10개   (10부터 10개)
   <이전  1(0)      2           3  4 5 6 7 8 9 10  다음>
         0~9:1	   10~19:2					  90~99:10	
         0.0~0.9 1로 만들기 x    1.0~1.9 2로 만들기 x
         해결) +1       10+1=11=  1.1
         0.1~1.0   1.1   2.0	
         (pstartno+1)/(double)onepagelimit		
   
■ this.start   
             100부터10개  
   <이전  11(100)         12 13 14 15(현재) 16 17 18 19 20  다음>
   		 100~109:11
   		11				11일때  11    11-1 = 10 = 1.0 = 1*10 + 1
   		11				15일때  11    15-1 = 14 = 1.4 = 1*10 + 1
   		11				20일때  11    20-1 = 19 = 1.9 = 1*10 + 1
   		
   		1  : 10      1 +10-1
   		11 : 20      11+10-1
   		21 : 30      21+10-1
   
	//1. 전체글
	//2. 한페이지에 보여줄 게시물의 수
	//3. 총페이지계산
	//4. 하단에 페이지 나누기 수
	//5. 페이지의 스타트 번호
	//6. 하단 현재번호
	//7. 하단 시작
    //8. 하단 끝	
*/