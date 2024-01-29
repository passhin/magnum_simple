<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../inc/header.jsp"%>

    <form action="adminmodification.magnum" method="post">
        <div class="container">
            <h3>정보수정</h3>
            <hr>
            <label for="id"><strong class="required">*</strong> 아이디</label>
            <input type="text" name="id" id="id" value="${dto.id}" readonly>
            
            <label for="email"><strong class="required">*</strong> 이메일</label>
            <input type="text" name="email" id="email" value="${dto.email}" readonly>

            <label for="pw"><strong class="required">*</strong> 새로운 비밀번호</label>
            <input type="password" name="pw" id="pw" placeholder="(영문, 숫자 조합 10~20자리)">
            
            <label for="pw2"><strong class="required">*</strong> 비밀번호 확인</label>
            <input type="password" name="pw1" id="pw1" placeholder="(영문, 숫자 조합 10~20자리)">
			 <p><input type="button" value="중복확인" id="pwtest">
                <span id="pwdouble"></span>
            </p>
            <label for="name"><strong class="required">*</strong> 이름</label>
            <input type="text" name="name" id="name" value="${dto.name}" readonly>

            <label for="birth"><strong class="required">*</strong> 생년월일</label>
            <input type="text" name="birth" id="birth" value="${dto.birth}" readonly>
         
            <div>
                <input type="button" class="registerbtn" value="취소" onClick="history.go(-1)">
                <input type="submit" class="registerbtn" value="정보수정">
            </div>

        </div><!-- div end -->
   
    </form><!-- form end-->
    <script>
    $(function(){
    	  $("#pwtest").on("click" , function(){
    		if( $("#pw").val()=="" ){
    			alert("빈칸입니다.\n확인해주세요");
    			$("#pw").focus();
    			return false;
    		}else{
    			if( $("#pw1").val()=="" ){
        			alert("빈칸입니다.\n확인해주세요");
        			$("#pw1").focus();
        			return false;
    		}
    		}
    		let password = document.getElementById('pw');	
    		let password1 = document.getElementById('pw1');	
    		let msg = document.getElementById('pwdouble');	
    		let correctColor = "blue";
    		let wrongColor = "red";
    		
    		if(password.value == password1.value){
    				msg.style.color = correctColor;
    				msg.innerHTML ="일치"
    			}else{
    				msg.style.color = wrongColor;
    				msg.innerHTML ="불일치"
    				}
    		
    			});
    		}); // end if
    
    </script>
        
<%@include file="../inc/footer.jsp"%>