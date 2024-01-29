<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../inc/header.jsp"%>

    <form action="modification.magnum" method="post" id="joinform">
        <div class="container">
            <h3>개인정보수정</h3>
            <hr>
            <label for="id"><strong class="required">*</strong> 아이디</label>
            <input type="text" name="id" id="id" value="${dto.id}" readonly>
 
            <label for="pw"><strong class="required">*</strong> 새로운 비밀번호</label>
            <input type="password" name="pw" id="pw" value="${dto.pw}" placeholder="(영문, 숫자 조합 10~20자리)">
            
            <label for="pw1"><strong class="required">*</strong> 비밀번호 확인</label>
            <input type="password" name="pw1" id="pw1" value="${dto.pw}" placeholder="(영문, 숫자 조합 10~20자리)">
 			<p><input type="button" value="확인" id="pwtest">
                <span id="pwdouble"></span>
            </p>
			<label for="email"><strong class="required">*</strong> 이메일</label>
            <input type="text" name="email" id="email" value="${dto.email}" readonly>

            <label for="name"><strong class="required">*</strong> 이름</label>
            <input type="text" name="name" id="name" value="${dto.name}" readonly>

            <label for="birth"><strong class="required">*</strong> 생년월일</label>
            <input type="text" name="birth" id="birth" value="${dto.birth}" readonly>

            <label for="phone"><strong class="phone">*</strong> 전화번호</label>
            <input type="text" id="phone" name="phone" value="${dto.phone}">
         
            <div>
                <input type="button" class="registerbtn" value="취소"  onClick="history.go(-1)">
                <input type="submit" class="registerbtn" id="button" value="정보수정">
            </div>
<script>	
		//빈칸확인
		$("#button").on("click" , function(){

			let form = document.getElementById('joinform');
			let datavalue = [ "아이디", "새로운 비밀번호", "비밀번호 확인","이메일", "이름",
				"생년월일", "전화번호"];
			let inputText = document
					.querySelectorAll('#joinform input[type="text"]');
			let inputPassword = document
					.querySelectorAll('#joinform input[type="password"]');
			let inputs = new Array();
			
			for (let i = 0; i < inputText.length; i++) {
				inputs.push(inputText[i]);
			}
			for (let i = 0; i < inputPassword.length; i++) {
				inputs.splice(i + 1, 0, inputPassword[i]);
			}
			console.log(inputs);
			form.onsubmit = function() {

				for (let i = 0; i < inputs.length; i++) {
					if (inputs[i].value.trim() === "") {
						alert(datavalue[i] + "이(가) 빈칸입니다. 확인해주세요!");
						inputs[i].focus();
						return false;
					}
				}
				return true; // Allow form submission
			};      		
		});
		//비번확인
		$(function(){
        	  $("#pwtest").on("click" , function(){
        		
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
        </div><!-- div end -->
    </form><!-- form end-->
<%@include file="../inc/footer.jsp"%>