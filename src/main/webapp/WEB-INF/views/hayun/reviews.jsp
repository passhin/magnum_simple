<%@page import="java.sql.*"%>
<%@page  language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link href="${path}/resources/css/reviewcss.css" rel="stylesheet" >
 </head>
 <body>
 <script>
  
 var unoVal = '${sessionScope.login.uno}';
 var uidVal = '${sessionScope.login.id}';
 var dnoVal = getDno();
 
 function getDno() {
     var url = window.location.href;
     var regex = /[?&]dno=(\d+)/;  
     var results = regex.exec(url);

     if (!results) return null;
     return results[1];        
 }
 
 $(function(){
	 reviewReadAll(); 
	 
 });
 //아작스 호출 뒤 불러줄 것들 ↓
 function reviewReadAll(){ 
	 var dnoVal = getDno();
		console.log('dnoVal---------'+dnoVal);
		console.log('unoVal---------'+unoVal);
		console.log('uidVal---------'+uidVal);
		$.ajax({
			url:"reviewReadAll" ,
			type:"GET" ,
			dataType:"json",
			data:{dno:dnoVal},
			error:function(xhr,status,msg){ alert(status+"/" +msg);},
			success:reviewListResult  
		});
 }
  
 function reviewListResult(json) {
	    $(".rtable tbody").empty();

	    $.each(json.result, function (idx, review) {
	        console.log('---------review uno ---' + review.uno);
	        console.log('---------review uno  type' + typeof review.uno);

	        let $textarea = $("<textarea>").val(review.rcontent).prop("readonly", true);
	        $(".review-cnt").empty();
			$(".star-avg").empty();
		 	$(".review-cnt").append($("<p>").html("리뷰 ( "+ review.cntRead +" ) 개").addClass("review-cnt"));
			$(".star-avg").append($("<p>").html(review.avgRead)); 
			
	        let $tr = $("<tr>").addClass("greatBox") 
	            .append($("<td>").html(review.id))
	            .append($("<td>").append($("<img>").attr("src", "${path}/resources/images/stars/" + review.r_star + "star.png").attr("alt", "star").css("width", "90px")))
	            .append($("<td>").html("(" + review.r_star + ".0)"))
	            .append($("<td>").html(review.rdate).addClass("dateTrs"))
	            .append($("<td>").append($textarea).addClass("tr_content").css("border", "none"))
	            .append($("<td>").append($("<button>").addClass("tr_update").text("수정").on("click", function () {
	                if ($(this).text() === "수정완료") {
	                    let rno = review.rno;
	                    let rcontent = $tr.find("textarea").val();
	                    reviewUpdate(rno, rcontent);
	                } else {
	                    $textarea.prop("readonly", false).css("border", "1px solid #ccc");
	                    $(this).text("수정완료").removeClass("tr_update").addClass("tr_confirm");
	                }
	            })))
	            .append($("<td>").append($("<button>").addClass("tr_delete").text("삭제").on("click", function () {
	                let result = confirm("후기를 삭제하시겠습니까?");
	                if (result) { 
	                    reviewDelete(review.rno);
	                } else {
	                    return false;
	                }
	            })));

	        if (uidVal === review.id) {
	            $tr.find(".tr_update, .tr_delete").show();
	        } else {
	            $tr.find(".tr_update, .tr_delete").hide();
	        }
	        
	        if (unoVal === "") {
	            $("#rcontent").empty().prop("readonly", true).attr('placeholder', '로그인 후 작성 가능합니다');
	        }

	  
	        $tr.appendTo(".rtable tbody");
	    });
	}


	function reviewUpdate(rno, rcontent) {
	    console.log('.....reviewUpdate : ' + rno);

	    $.ajax({
	        url: "reviewUpdate",
	        type: "POST",
	        dataType: "json",
	        data: { rno: rno, rcontent: rcontent },
	        error: function(xhr, status, msg) { alert(status + "/" + msg); },
	        success: function(json) {
	            let msg = '관리자에게 문의해주세요!';
	            if (json.result == 1) {
	                msg = '수정성공!';
	            }
	            alert(msg); 
	            $(".tr_confirm").text("수정").removeClass("tr_confirm").addClass("tr_update"); 
	            $("textarea:not(#rcontent)").prop("readonly", true).css("border", "none");

	            reviewReadAll();
	        }
	    });
	}
 
	
	 
  function reviewInsert(){ 
		console.log('.....reviewInsert');
 
		$.ajax({
			url:"reviewInsert",
			type:"POST",
			dataType:"json",
			data:{ r_star: $("input[name='stars']:checked").val(), rcontent:$("#rcontent").val(),uno:unoVal,dno:dnoVal}, //수정요망 session uno, 현재페이지
			error:function(xhr, status,msg) { alert(status+"insert error" + msg);},
			success:function(json){
				let msg='관리자에게 문의해주세요!' ;
				if(json.result==1){
					msg='후기 작성 성공!';
				}
				alert(msg);
				$("#stars").val('');
				$("#rcontent").val('');
				reviewReadAll();
				
			}
		});
}
 
 function reviewDelete(rno){
	 console.log('.....reviewDelete : ' + rno + '\t'+typeof rno);
	 
	 $.ajax({
			url:"reviewDelete",
			type:"GET",
			dataType:"json",
			data:{rno:rno},
			error:function(xhr,status,msg) {alert(status + "/" + msg);},
			success:function(json){
				let msg='후기삭제실패!' ;
				if(json.result==1){
					msg='후기가 삭제되었습니다!';
				}
				alert(msg);  
				reviewReadAll();
				
			}
		 });
	  
}
 
 </script>


 	
 <div id="allCon">
 	
 	<div class="container-reviewWrite">
 	 <div id="upperBoxParent">
 	 <div id="upperBox">
 	   <div id="subBox">  
	  			<p class="review-cnt">후기</p>
	  		<div class="miniBar">
		   		<p class="avgAnnounce">평균별점</p>
		   		<p class="star-avg">4.0</p>
		   	</div>
		</div>
		<div class="writeBox">
		   	<div class="sel-stars"> 
		   		<label for="stars" id="selStar">별점 선택</label>
		   		<input type='radio' name='stars' value='5' checked/><a class="starStyle"><img src="${path}/resources/images/stars/5star.png" alt="5stars" class="image image-full"  width="80px"></a>
				 <input type='radio' name='stars' value='4' /><a class="starStyle"><img src="${path}/resources/images/stars/4star.png" alt="4stars" class="image image-full"   width="80px"></a>
				 <input type='radio' name='stars' value='3' /><a class="starStyle"><img src="${path}/resources/images/stars/3star.png" alt="3stars" class="image image-full"   width="80px"></a>
				<input type='radio' name='stars' value='2' /><a class="starStyle"><img src="${path}/resources/images/stars/2star.png" alt="2stars" class="image image-full"  width="80px"></a>
				<input type='radio' name='stars' value='1' /><a class="starStyle"><img src="${path}/resources/images/stars/1star.png" alt="1stars" class="image image-full"   width="80px"></a>
		   	</div>	
		   
		    <div class="write-rcontent"> 
		   		<label for="rcontent"></label> 
		   		<textarea placeholder="후기를 입력해 주세요." id="rcontent" name="rcontent" rows="4" cols="100"  style="resize:none;"  ></textarea>
		   	</div>	  		
		   	<div class="insert-btn">
		   		<input type="button" id="insert"  value="후기작성"  class="btn-insert"/>
		   	</div> 
		 </div>
		 </div> 	 </div>	
	<!-- 					 -->
 	<!-- 					 -->
 	<!-- 					 -->
 	<!-- 					 --> 	
 	<div class="container-reviewView">
 		<h3  class="panel-heading"> </h3>
 		<table  class="rtable">
 			<caption></caption>
 			<thead><tr><th  scope="col"></th> <th  scope="col"></th><th  scope="col"></th></tr></thead>
 			<tbody> 
  
 			</tbody>
 		</table>
 	</div>	
</div>
	      <script>
		   	$(function(){
		   		$("#insert").on("click" , function(){
		   			 if($("#rcontent").val()==""){
		   				alert('빈칸입니다');
		   				$("#rcontent").focus();
		   				return false
		   			}else{
		   				reviewInsert();
		   			}
		   		});  
		   	});
		   </script>   
 	</div><!--  end container  -->
 	

      
 	</body>
</html>
 