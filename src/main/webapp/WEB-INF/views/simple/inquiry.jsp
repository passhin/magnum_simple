<%@page import="java.sql.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 			 -->
<!-- 			 -->
<!-- 			 -->
<%@include file="../inc/header.jsp"%>


<div class="inquiry" style="margin-top:10%">
	<h3 class="myhidden">가맹점 등록</h3>
	<form id="inquiryForm1">
			<div class="form-group">
				<label for="image1">사진1</label> 
				<input type="file" id="image1" name="image1" />
			</div>
			<div class="form-group">
				<label for="image2">사진2</label> 
				<input type="file" id="image2" name="image2" />
			</div>
			<div class="form-group">
				<label for="image3">사진3</label> 
				<input type="file" id="image3" name="image3" />
			</div>
			<div class="form-group">
				<label for="image4">사진4</label> 
				<input type="file" id="image4" name="image4" />
			</div>
	</form>
	<form id="inquiryForm2">
		<fieldset>
			<legend class="myhidden">edit</legend>
			<div class="form-group">
				<div class="form-group">
					<label for="mno">역 선택</label> 
					<select name="mno" id="mno" class="form-control">
						<option value="0">역 선택</option>
						<option value="1">신림</option>
						<option value="2">봉천</option>
						<option value="3">서울대입구</option>
						<option value="4">낙성대</option>
						<option value="5">사당</option>
						<option value="6">방배</option>
						<option value="7">서초</option>
						<option value="8">교대</option>
						<option value="9">강남</option>
						<option value="10">역삼</option>
						<option value="11">선릉</option>
						<option value="12">삼성</option>
						<option value="13">종합운동장</option>
						<option value="14">신천</option>
						<option value="15">잠실</option>
						<option value="16">잠실나루</option>
						<option value="17">강변</option>
						<option value="18">구의</option>
						<option value="19">건대입구</option>
						<option value="20">성수</option>
						<option value="21">용답</option>
						<option value="22">신답</option>
						<option value="23">용두</option>
						<option value="24">신설동</option>
						<option value="25">뚝섬</option>
						<option value="26">한양대</option>
						<option value="27">왕십리</option>
						<option value="28">상왕십리</option>
						<option value="29">신당</option>
						<option value="30">동대문역사문화공원</option>
						<option value="31">을지로4가</option>
						<option value="32">을지로3가</option>
						<option value="33">을지로입구</option>
						<option value="34">시청</option>
						<option value="35">충정로</option>
						<option value="36">아현</option>
						<option value="37">이대</option>
						<option value="38">신촌</option>
						<option value="39">홍대입구</option>
						<option value="40">합정</option>
						<option value="41">당산</option>
						<option value="42">영등포구청</option>
						<option value="43">문래</option>
						<option value="44">신도림</option>
						<option value="45">도림천</option>
						<option value="46">양천구청</option>
						<option value="47">신정네거리</option>
						<option value="48">까치산</option>
						<option value="49">대림</option>
						<option value="50">구로디지털단지</option>
						<option value="51">신대방</option>
					</select>
				</div>
				<div class="form-group">
					<label for="opent">오픈 시간</label> 
					<select class="opent" id="opent" name="opent">
					<c:forEach var="i" begin="0" end="24">
						<c:set var="startTm" value="${i>9?i:'0'}${i>9?'':i}" />
						<option value="${i>9?i:'0'}${i>9?'':i}00"
							<c:if test="${data.startDispTm eq startTm}">selected</c:if>>${i>9?i:'0'}${i>9?'':i}:00</option>
					</c:forEach>
				</select> 
				</div>
				<div class="form-group">
					<label for="closet">마감 시간</label>
					<select class="closet" id="closet" name="closet">
					    <c:forEach var="i"  begin="0" end="24">
					     <c:set var="endTm" value="${i>9?i:'0'}${i>9?'':i}" />
					        <option value="${i>9?i:'0'}${i>9?'':i}00" <c:if test="${data.endDispTm eq endTm}">selected</c:if>>${i>9?i:'0'}${i>9?'':i}:00</option>
					    </c:forEach>
					</select>
				</div>
				<div>
					<label for="fname">가맹점 이름</label> 
					<input type="text" name="fname" id="fname" class="form-control" placeholder="가맹점이름 입력">
				</div>
				<div>
					<label for="phone">전화번호</label> 
					<input type="text" name="phone" id="phone" class="form-control" placeholder="전화번호 입력">
				</div>
				<div>
					<label for="cost">비용</label> 
					<input type="number" name="cost" id="cost" class="form-control" placeholder="데이트비용 입력">
				</div>
				<div>
					<div class="form-group">
					<input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" placeholder="주소" class="form-control"><br>
					<input type="text" id="sample6_detailAddress" placeholder="상세주소" class="form-control">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목" class="form-control">
				</div>
				</div>
	
				<div class="form-group">
					<label for="content">가게 소개</label>
					<textarea name="content" id="content" cols="60" rows="10" class="form-control" placeholder="가맹점소개 입력"></textarea>
				</div>
	
				<div class="text-right" style="margin: 5% 5% 0 0">
					<input type="reset" value="리셋" class="btn btn-default">
					<a href="javascript:history.go(-1)" class="btn btn-default">뒤로가기</a>
					<input type="submit" value="등록하기" class="btn btn-info">
				</div>
			</div>
		</fieldset>
	</form>
	<!-- end form -->
</div>
<script>	
	$(document).ready(function(){
		$("#inquiryForm").submit(function(){
			if($("#content").val()==""){
				alert("내용을 입력하세요");
				$("#content").focus();
				return false;
			}
			if($("#area").val()=="0"){	
				alert("지역을 선택하세요");
				$("#area").focus();
				return false;
			}
			if($("#mno").val()==""){	
				alert("역을 선택해 주세요.");
				$("#mno").focus();
				return false;
			}
		});
	});
</script>






<%@include file="../inc/footer.jsp"%>