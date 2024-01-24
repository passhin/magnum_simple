
$(function(){
    $('.sitemap_wrap').css({"display":"none"});
    $('.sitemap').on('click',function(){
        $('.sitemap_wrap').slideDown();
        
    });
    $('.xbtn').on('click',function(){
        $('.sitemap_wrap').slideUp();
    });

    $('.top_navi .left').hide();
    $('.top_navi').on('click',function(){
        $('.top_navi .left').slideToggle('slow');
    });
});
// 위로가기 버튼
$(function(){
    $("#up").hide();
    $(window).on("scroll",function(e){
        // console.log(e);
        e.preventDefault;
        console.log($(this).scrollTop());
        if($(this).scrollTop() > 100){ $("#up").fadeIn(1000); }
        else{$("#up").fadeOut(1000);}
    });
    $("#up").on("click",function(){
        $('html, body').animate({"scrollTop":"0"},1000);
        $('.header .logo').fadeIn();
        $('.header .top_navi').fadeIn();
        $('.header .right').fadeIn();
        return false;		
    });
});

// quick 메뉴
$(function(){
    $('#quickbar > ul').hide();
    $('.open').on('click',function(){
        $('#quickbar > ul').stop().fadeIn();
        $('#quickbar').css({"bottom":"46%"});
        if($('.open > button > img').attr("src")== '/resources/images/plus-fill.svg'){
            $('.open button img').attr("src","/resources/images/x-fill.svg");
        }else if($('.open > button > img').attr("src")== '/resources/images/x-fill.svg'){
            $('.open button img').attr("src","/resources/images/plus-fill.svg");
            $('#quickbar > ul').hide();
            $('#quickbar').css({"bottom":"22.5%"});
        }  
    });

    
});
// 간편로그인
jQuery(function ($) {
    $(".sns-wrap").on("click", "a.social_link", function (e) {
        e.preventDefault();

        let pop_url = $(this).attr("href");
        let newWin = window.open(
            pop_url,
            "social_sing_on",
            "location=0,status=0,scrollbars=1,width=600,height=500"
        );

        if (!newWin || newWin.closed || typeof newWin.closed == 'undefined')
            alert('브라우저에서 팝업이 차단되어 있습니다. 팝업 활성화 후 다시 시도해 주세요.');

        return false;
    });
});

// 아아디찾기
$(function () {
    $("#reg_zip_find").css("display", "inline-block");
    let pageTypeParam = "pageType=find";

});
function fpasswordlost_submit(f) {
    // if (!chk_captcha()) return false;

    return true;
}

// 회원가입
// function fregister_submit(f) {
//     if (!f.agree.checked) {
//         alert("회원가입약관의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
//         f.agree.focus();
//         return false;
//     }

//     if (!f.agree2.checked) {
//         alert("개인정보 수집 및 이용의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
//         f.agree2.focus();
//         return false;
//     }

//     return true;
// }

jQuery(function ($) {
    // 모두선택
    $("input[name=chk_all]").click(function () {
        if ($(this).prop('checked')) {
            $("input[name^=agree]").prop('checked', true);
        } else {
            $("input[name^=agree]").prop("checked", false);
        }
    });
});

// 카카오,네이버로 회원가입

jQuery(function($){
    $(".sns-wrap").on("click", "a.social_link", function(e){
        e.preventDefault();

        let pop_url = $(this).attr("href");
        let newWin = window.open(
            pop_url, 
            "social_sing_on", 
            "location=0,status=0,scrollbars=1,width=600,height=500"
        );

        if(!newWin || newWin.closed || typeof newWin.closed=='undefined')
             alert('브라우저에서 팝업이 차단되어 있습니다. 팝업 활성화 후 다시 시도해 주세요.');

        return false;
    });
});
// 회원가입 gnb 감추기
$(function () {				
    
    $(window).on("mousewheel", function (event, delta)  { //스크롤시					
        
        if(delta < 0){
            $('.header .logo').fadeOut();
            $('.header .top_navi').fadeOut();
            $('.header .right').fadeOut();
        }else if (delta > 0){
            $('.header .logo').fadeIn();
            $('.header .top_navi').fadeIn();
            $('.header .right').fadeIn();
        }
    });
});

// 롤링 배너

window.addEventListener('load',function(){
    // 롤링 배너 복제본 생성
    let roller1 = document.querySelector('.rolling-list');
    roller1.id = 'roller1'; 
    let roller2 = document.querySelector('.rolling-list2');
    roller2.id = 'roller3'; // 아이디 부여

    let clone1 = roller1.cloneNode(true)
    clone1.id = 'roller2';
    document.querySelector('.banner').appendChild(clone1);
    let clone2 = roller2.cloneNode(true)
    // cloneNode : 노드 복제. 기본값은 false. 자식 노드까지 복제를 원하면 true 사용
    clone2.id = 'roller4';
    document.querySelector('.banner2').appendChild(clone2); // banner2 하위 자식으로 부착

    document.querySelector('#roller1').style.left = '0px';
    document.querySelector('#roller3').style.left = '0px';
    document.querySelector('#roller2').style.left = document.querySelector('.rolling-list ul').offsetWidth + 'px';
    document.querySelector('#roller4').style.left = document.querySelector('.rolling-list2 ul').offsetWidth + 'px';
    // offsetWidth : 요소의 크기 확인(margin을 제외한 padding값, border값까지 계산한 값)

    roller1.classList.add('original1');
    roller2.classList.add('original2');
    clone1.classList.add('clone1');
    clone2.classList.add('clone2');

});

// 주소입력
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
