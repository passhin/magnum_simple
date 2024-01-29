<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../inc/header.jsp"%>

    <form action="membership.magnum" method="post" id="joinform">
        <div class="container">
            <h3>회원가입</h3>
            <p> <strong class="required">*</strong>은 필수입력사항입니다. </p>
            <hr>


            <label for="id"><strong class="required">*</strong> 아이디</label>
            <input type="text" name="id" id="id" placeholder="(아이디는 영문, 숫자 4~15자리)">
            <p><input type="button" value="중복확인" id="idtest">
                <span id="iddouble"></span>
            </p>

            <label for="pw"><strong class="required">*</strong> 비밀번호 </label>
            <input type="password" name="pw" id="pw" placeholder="(영문, 숫자 조합 10~20자리)">

            <label for="pw1"><strong class="required">*</strong> 비밀번호 확인</label>
            <input type="password" name="pw1" id="pw1" placeholder="(영문, 숫자 조합 10~20자리)">
            <p><input type="button" value="확인" id="pwtest">
                <span id="pwdouble"></span>
            </p>
 			<label for="email"><strong class="required">*</strong> 이메일</label>
            <input type="text" name="email" id="email" placeholder="이메일">
            
            <label for="name"><strong class="required">*</strong> 이름</label>
            <input type="text" name="name" id="name" placeholder="이름">

            <label for="birth"><strong class="required">*</strong> 생년월일</label>
            <input type="text" name="birth" id="birth" placeholder="생년월일 8자리">

            <label for="phone"><strong class="phone">*</strong> 전화번호</label>
            <input type="text" id="phone" name="phone" placeholder="휴대전화번호">

            <input type="checkbox" id="checkbox" name="checkbox">
            <label for="checkbox">개인정보 처리방침 필수 동의</label>
             <button type="button" class="btn btn-info btn-lg" id="myBtn">자세히 보기</button>
			 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <fieldset class="agree_area a2">
        <legend>개인정보 수집 및 이용동의</legend>
        <textarea cols="60" rows="5" title="이용약관동의"
        id="agreement1" readonly="readonly"> 
■ 수집하는 개인정보 항목
회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 비밀번호 질문과 답변 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일 , 직업 , 회사명 , 부서 , 직책 , 회사전화번호 , 취미 , 결혼여부 , 기념일 , 법정대리인정보 , 서비스 이용기록 , 접속 로그 , 접속 IP 정보 , 결제기록
ο 개인정보 수집방법 : 홈페이지(회원가입) , 서면양식
■ 개인정보의 수집 및 이용목적
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송
ο 회원 관리
회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인 , 고지사항 전달 ο 마케팅 및 광고에 활용
접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계
■ 개인정보의 보유 및 이용기간
회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.
		


    </textarea>
       <div>
        <strong>개인정보 수집 및 이용에 동의하십니까?</strong>
        <input type="checkbox" id="agree2" name="agree2">
        <label for="agree2">동의함</label>
       </div>
   </fieldset>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" id="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

            <div>
                <input type="button" class="registerbtn" value="가입취소">
                <input type="submit" class="registerbtn" id="button" value="회원가입">
            </div>

<script>
 $(function(){
	 
	 //이용약관
	 $(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal();
   
  });
});
	 //modal 체크박스확인
	 $("#modal").on("click" , function(){
	 if( $("input:checkbox[id='agree2']").is(":checked")!=true ){
			alert("동의함을 확인 해주세요");
			return false;
		} 
	 });
	 	//아이디확인	 	
	 	
            	  $("#idtest").on("click" , function(){
            		$.ajax({
            			url:"${pageContext.request.contextPath}/IDCheck.magnum", 
            			type:"get", 
            			dataType:"json" , 
            			data:{"id":$("#id").val()} , 
            			success:function(result){
            				if(result == true){
            					$("#iddouble").css("color","blue").text("사용가능");
            				} else{
            			$("#iddouble").css("color","red").text("사용불가");
            			$("#id").val('');
            				}
            			}, 
            			error:function(xhr, textStatus, errorThrown){
            				$("#iddouble").html(textStatus + "(HTTP-"+xhr.status+")") 
            			}
            		}); // end ajax
            	  });  // end click
            	}); // end class
            	
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
              		//빈칸확인
       $("#button").on("click", function () {
    let form = document.getElementById('joinform');
    let datavalue = ["아이디", "비밀번호", "비밀번호 확인", "이메일", "이름", "생년월일", "전화번호"];

    let inputElements = document.querySelectorAll('#joinform input[type="text"], #joinform input[type="password"], #joinform input[type="email"]');
    let checkbox = document.getElementById('checkbox');

    // 모든 입력 요소를 배열로 만듭니다.
    let inputs = Array.from(inputElements);

    console.log(inputs);

    form.onsubmit = function () {
        for (let i = 0; i < inputs.length; i++) {
            if (inputs[i].value.trim() === "") {
                alert(datavalue[i] + "이(가) 빈칸입니다. 확인해주세요!");
                inputs[i].focus();
                return false;
            }

            // 비밀번호와 비밀번호 확인이 일치하지 않는 경우
            if (i > 0 && i < inputs.length - 1) {
                let password = inputs[i - 1].value.trim();
                let confirmPassword = inputs[i].value.trim();
                if (password !== confirmPassword) {
                    alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                    inputs[i].focus();
                    return false;
                }
            }
        }

        // 이용약관 동의 체크박스 확인
        if (!checkbox.checked) {
            alert("개인정보에 체크해주세요");
            return false;
        }

        return true; // 폼 제출 허용
    };
});
              	
            </script>

        </div><!-- div end -->
    </form><!-- form end-->
<%@include file="../inc/footer.jsp"%>