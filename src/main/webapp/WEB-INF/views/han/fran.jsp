<%@page import="java.sql.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@include file="../inc/header.jsp"%>

<div class="list_view">
    <div class="form-group">
        <label for="mno">역 선택</label> 
        <select name="mno" id="mno" class="mno_select">
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
    
    <table class="fran_table table table-striped" style="width: 80%; margin: 0 auto;">
		<caption>
			데이트 코스
		</caption>
		<colgroup>
			<col style="width: 20%">
			<col style="width: 20%">
			<col style="width: 20%">
			<col style="width: 20%">
			<col style="width: 20%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
				<th scope="col" class="myhidden">가맹점목록</th>
			</tr>
		</thead>
		<tbody>
			<tr class="read4">
				<c:forEach var="read4" items="${read4}" varStatus="status">
					<td style="width: 24%">
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/read?fno=${read4.fno}">
									<img
									src="${pageContext.request.contextPath}/resources/images/${read4.iname }"
									title="${read4.fname }" style="width: 200px" />
							</a></li>
							<li>영업시간 : ${read4.starttime } - ${read4.endtime }</li>
							<li>${read4.fname }</li>
							<li>${read4.address }</li>
							<li>2인기준가격 - ${read4.cost }</li>
							<li>${read4.phone }</li>
						</ul>
					</td>
				</c:forEach>
			</tr>
			<tr style="height: 100px" class="list">
				<c:forEach var="list" items="${list}" varStatus="status">
				<!--<c:if test="${status.index%10 == 5 }"> </tr> <tr class="list2"> </c:if>-->
				<td style="height: 50%">
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/read?fno=${list.fno}">
									<img
									src="${pageContext.request.contextPath}/resources/images/${list.iname }"
									title="${list.fname }" style="width: 200px" />
							</a>
						</li>
						<li>영업시간 : ${list.starttime } - ${list.endtime }</li>
						<li>${list.fname }</li>
						<li>${list.address }</li>
						<li>2인기준가격 - ${list.cost }</li>
						<li>${list.phone }</li>
					</ul>
				</td>
				</c:forEach>
			</tr>
		</tbody>
        <tfoot>
            <tr>
				<td colspan="3" class="text-center">
					<ul class="pagination">
						<!-- 이전 -->
						<!-- 1(10) 2 3 4 5 6 7 8 9 10 -->
						<!-- 이전(90) 11(100) 12 13 14 15 16 17 18 19 20 -->
						<c:if test="${paging.start >= paging.bottomlimit }">
							<li><a
								href="${pageContext.request.contextPath}/list.fran?pstartno=${(paging.start-2)*paging.onepagelimit}">이전</a>
							</li>
						</c:if>
						<!-- 1 2 3 4 5 6 7 8 9 10 -->
						<c:forEach begin="${paging.start }" end="${paging.end }" var="i">
							<li <c:if test="${paging.current == i}"> class="active"</c:if>>
								<a href="${pageContext.request.contextPath}/list.fran?pstartno=${(i-1)*paging.onepagelimit}">${i }</a>
							</li>
						</c:forEach>
						<!-- 다음 -->
						<!-- 1 2 3 4 5 6 7 8 9 10(90) 다음(100) -->
						<!-- 11 12 13 14 15 16 17 18 19 20(190) 다음(200) -->
						<c:if test="${paging.end <= paging.bottomlimit }">
							<li><a href="${pageContext.request.contextPath}/list.fran?pstartno=${paging.end*paging.onepagelimit}">다음</a>
							</li>
						</c:if>
					</ul>
				</td>
			</tr>
        </tfoot>
    </table>
    <c:if test="${login.getId() == 'cwal15'}">
	    <p class="text-right" style="margin-right: 10%">
	        <a href="${pageContext.request.contextPath }/inquiry" class="btn btn-primary">가맹점 추가하기</a>
	    </p>
    </c:if>
</div>

<script>
    $(function() {
        // Ajax 통신 부분
        $("#mno").change(function () {
        
			$(".fran_table tbody .list").empty();
            $.ajax({
                url: "${pageContext.request.contextPath}/list.mn",
                type: "GET",
                dataType: "json",
                data: {mno: $("#mno").val()},
                error: function (xhr, status, msg) {
                    alert(status + "/" + msg);
                },
                success:listjax
            });
            return false;
        });
    });
	function listjax(json){
        // 서버에서 받은 JSON 데이터로 동적으로 <td> 생성
		console.log('............ mnoSelect');
		 
        
        $.each(json.result, function (index, item) {
			 console.log('.........ajax');
			 $(".fran_table tbody .list"+index).remove();
			 var row = $("<td class='list"+index+"'>");
             row.append(
            	$("<ul>").html(
                 '<li><a href="${pageContext.request.contextPath}/read?fno=' + item.fno + '">' +
                 '<img src="${pageContext.request.contextPath}/resources/images/' + item.iname + '" title="' + item.fname + '" style="width: 200px" /></a></li>' +
                 '<li>영업시간 : ' + item.starttime + ' - ' + item.endtime + '</li>' +
                 '<li>' + item.fname + '</li>' +
                 '<li>' + item.address + '</li>' +
                 '<li>2인기준가격 - ' + item.cost + '</li>' +
                 '<li>' + item.phone + '</li>'
             )).appendTo(".fran_table tbody .list");
         });
	}    
</script>

<%@include file="../inc/footer.jsp"%>