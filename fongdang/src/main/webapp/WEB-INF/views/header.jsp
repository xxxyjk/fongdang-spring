<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kh.spring.fongdang.member.domain.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/header.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/button.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 200;
    background-color: rgba(0, 0, 0, 0.7);
}
.modal > .header_alarm_content {
    position: relative;
    top: 200px;
    margin: auto;
    width: 430px;
    background-color: white;
    border-radius: 10px;
    padding: 10px;
    font-family: SUIT-Regular;
}
.modal_title {
    font-family: SUIT-SemiBold;
    color: #5e5e5e;
    font-size: 20px;
}
#btn_close {
    background-color: transparent;
    border: none;
    color: red;
    font-size: 20px;
    cursor: pointer;
    float: right;
}
.header_alarm_content .alarm_list:first-of-type {
    display: flex;
    margin-top: 30px;
}
.header_alarm_content .alarm_list:not(:first-of-type) {
    display: flex;
    margin-top: 10px;
}
.header_alarm_content .alarm_list_left.read {
    color: #dadce0;
    cursor: default;
}
.header_alarm_content .alarm_list_left {
    color: #444C57;
    flex: 1 1 auto;
    cursor: pointer;
}
.header_alarm_content .a_content {
    font-family: 'SUIT-Regular';
    font-size: 15px;
}
.header_alarm_content .a_date {
    font-family: 'SUIT-Regular';
    font-size: 13px;
    margin: 5px 0;
}
.header_alarm_content .btn_delete {
    background-color: transparent;
    border: none;
    color: #e0e0e0;
    cursor: pointer;
    font-size: 15px;
}
.read_N{
 animation: color 2s infinite;
}
@keyframes color{
 0% {color: black;}
 50% {color: #EF9A9A;}
 100% {color: black;}
}

</style>
<div class="modal header_alarm">
    <div class="header_alarm_content">
        <span class="modal_title">????????????</span><button id="btn_close" type="button"><i class="fa fa-close"></i></button>
    </div>
</div>
<div class="main_headerWrap">
	<header class="site__header" style="margin: 0 auto;width=1280px;">
		<nav style="min-width: 1281px;">
			<a href="<%=request.getContextPath()%>"> <img
				src="<%=request.getContextPath()%>/resources/images/logo.png"
				id="logo"></a>
			<ul class="menu" style="position: relative;">
				<li><a href="<%=request.getContextPath()%>/funding/beforelist">????????????</a></li>
				<li><a href="<%=request.getContextPath()%>/funding/list">????????????</a></li>
				<li><a href="#">????????????</a>
					<ul class="dep2">
						<li><a href="<%=request.getContextPath()%>/notice/insertList/1">????????????</a></li>
						<li><a
							href="<%=request.getContextPath()%>/customerCenter/ask">1:1
								??????</a></li>
						<li><a href="<%=request.getContextPath()%>/guide/book">???????????????</a></li>
						<li><a href="<%=request.getContextPath()%>/customerCenter/road">????????????</a></li>
					</ul></li>

				<li>

<!-- ???????????? ?????? -->
					<form action="<%=request.getContextPath()%>/funding/list.search" method="GET"
						style="margin-left: 344px; width: 300px;">

						<div class="mx-auto mt-5 search-bar input-group mb-3">
							<input name="search_categroy" type="search" class="form-control rounded-pill"
								id="header_textbox" placeholder="category ??????">
							<div class="input-group-append"></div>
						</div>					
						<label for="header_textbox"><img
							src="<%=request.getContextPath()%>/resources/images/magnifying.png"
							class="question_header"></label>
					</form>

					<div class="searchR" style="right: 63px;">
						<p style="text-align: center;">????????????</p>
						<hr style="margin-top: 10px;">
						<ul>
							<li><a href="<%=request.getContextPath()%>/funding/list/cateC5"><p>????????????</p></a></li>
							<li><a href="<%=request.getContextPath()%>/funding/list/cateC4"><p>??????</p></a></li>
							<li><a href="<%=request.getContextPath()%>/funding/list/cateC3"><p>??????</p></a></li>
							<li><a href="<%=request.getContextPath()%>/funding/list/cateC1"><p>??????????????</p></a></li>
							<li><a href="<%=request.getContextPath()%>/funding/list/cateC2"><p>??????</p></a></li>
							<li><a href="<%=request.getContextPath()%>/funding/list/cateC6"><p>??????</p></a></li>
						</ul>
						<hr style="margin-top: 10px;">
						<p class="header_x"
							style="justify-content: end;; cursor: pointer;">??????</p>
					</div>
				</li>
			</ul>
			<ul class="menu2">


				<c:if test="${empty loginInfo}">
					<li><a href="<%=request.getContextPath()%>/member/login"
						id="login">?????????</a></li>
					<li><a
						href="<%=request.getContextPath()%>/member/register">????????????</a></li>
				</c:if>

			<c:if test="${!empty loginInfo}">
			<c:forEach items="${alarm}" var="alarm" >
				<c:if test="${alarm.count_readn >= 1}">
					<li id="btn_alarm"style="top: 10px;"><a><p class="read_N" >??????</p></a></li>
				</c:if>
				<c:if test="${alarm.count_readn < 1}">
					<li id="btn_alarm"style="top: 10px;"><a><p>??????</p></a></li>
				</c:if>
			</c:forEach>	
					<c:if test="${!empty loginInfo}">
						<c:if test="${loginInfo.name ne '?????????'}">
							<li style="top: 10px;"><a href="<%=request.getContextPath()%>/member/myfongdang" id="">?????????</a></li>
						</c:if>
						<c:if test="${loginInfo.name eq '?????????'}">
							<li style="top: 10px;"><a
								href="<%=request.getContextPath()%>/member/logout" id="">????????????</a></li>
						</c:if>
					</c:if>
				</c:if>
				<c:if test="${loginInfo.name ne '?????????'}">
					<li><a href="<%=request.getContextPath()%>/maker/view"
						id="fdapply">?????? ???????????? ??????</a></li>
				</c:if>
				<c:if test="${loginInfo.name eq '?????????'}">
					<li><a href="<%=request.getContextPath()%>/admin/memberManagement">????????? ???????????? ??????</a></li>
				</c:if>
			</ul>
		</nav>
		<script>
        const wrapper = document.querySelector('.site__header');
        const menu = document.querySelector('.menu');
        const menuItem = Array.from(menu.querySelectorAll('li a'));

        menu.addEventListener('click', (e) => {
            let target = e.target;
            menuItem.forEach((item) => item.classList.remove('active'));
            target.classList.add('active');
        });
        $(".form-control").on("click", function () {
            $(".searchR").show();
        });
        $(".header_x").on("click", function () {
            $(".searchR").hide();
        });
        $("#btn_alarm").on('click', function(){
    		console.log("?????? ??????");
    		$.ajax({
    			url: "<%=request.getContextPath()%>/alarm/list",
    			type: "post",
    			datatype: "json",
    			success: function(result){
    				console.log(result);
    				if (result == -1) {
    					alert("???????????? ??? ?????? ?????? ????????? ???????????????. ????????? ???????????? ???????????????.");
    				} else if (result == 0) {
    					alert("????????? ????????????.");
    				} else {
    					$(".header_alarm").show();
    					$("#btn_close").nextAll().remove();
    					for(var i = 0; i < result.length; i++) {
    						var alarm = result[i];
    						var html = '';
    						console.log(alarm.a_content);
    						html += '<div class="alarm_list">';
    						if(alarm.read_yn == 'Y') {
    							html += '<div class="alarm_list_left read">';
    						} else {
    							html += '<div class="alarm_list_left" onclick="updateAlarm(this, '+alarm.a_no+');">';
    						}
    						html += '<div class="a_content">' + alarm.a_content + '</div>';
    						html += '<div class="a_date">' + alarm.a_date + '</div>';
    						html += '</div>';
    						html += '<div class="alarm_list_right"><button class="btn_delete" type="button" onclick="deleteAlarm(this, '+alarm.a_no+');"><i class="fa fa-trash"></i></button></div>';
    						html += '</div>';
    						
    						$(".header_alarm_content").append(html);
    					}
    				}
    			},
    			error: function(request, status, error) {
    				console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
    			}
    		});
    	});
    	// ?????? ?????? X ?????? ?????? ??? ????????? ??????
        $("#btn_close").on('click', function () {
            $(".header_alarm").hide();
        });
     	// ????????? ????????? ?????? ?????? ??? ?????? ????????? ??? ????????? ????????? ??????
        $(".alarm").on('click', function () {
            if (event.target == $(".alarm").get(0)) {
                $(".header_alarm").hide();
            }
        });
     	
     	// ?????? ??????
     	function deleteAlarm(alarm, a_no) {
     		console.log("?????? ??????");
     		$.ajax({
    			url: "<%=request.getContextPath()%>/alarm/delete",
    			type: "post",
    			data: {
    				a_no: a_no
    			},
    			success: function(result){
    				console.log(result);
    				if (result == -1) {
    					alert("????????? ?????? ?????? ???????????????. ?????? ??????????????????.");
    				} else if (result == 0) {
    					alert("???????????? ??? ?????? ?????? ????????? ???????????????. ????????? ???????????? ???????????????.");
    					/* location.href = "login"; */
    				} else if (result == 1){
    					$(alarm).parents().get(1).remove();
    				}
    			},
    			error: function(request, status, error) {
    				console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
    			}
    		});
     	};
     	
     	// ?????? ?????? ?????? ??????
     	function updateAlarm(alarm, a_no) {
     		console.log("?????? ?????? ??????");
     		$.ajax({
    			url: "<%=request.getContextPath()%>/alarm/update",
    			type: "post",
    			data: {
    				a_no: a_no
    			},
    			success: function(result){
    				console.log(result);
    				if (result == -1) {
    					alert("?????? ????????? ?????? ???????????????. ?????? ??????????????????.");
    				} else if (result == 0) {
    					alert("???????????? ??? ?????? ?????? ????????? ???????????????. ????????? ???????????? ???????????????.");
    					/* location.href = "login"; */
    				} else if (result == 1){
    					$(alarm).addClass("read");
    					$(alarm).removeAttr("onclick");
    				}
    			},
    			error: function(request, status, error) {
    				console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
    			}
    		});
     	};
     	
     	function countAlarm(alarm, a_no) {
     		console.log("?????? ?????? ??????");
     		$.ajax({
    			url: "<%=request.getContextPath()%>/alarm/count",
    			type: "post",
    			data: {
    				a_no: a_no
    			},
    			success: function(result){
    				console.log(result);
    				if (result == -1) {
    					alert("?????? ??????????????????.");
    				} else if (result == 0) {
    					alert("????????? ???????????? ???????????????.");
    					/* location.href = "login"; */
    				} else if (result == 1){
    					$(".read_N").removeClass("read_N");
    				}
    			},
    			error: function(request, status, error) {
    				console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
    			}
    		});
     	};
     	
     	$(".read_N").click(function(){
     		$(".read_N").removeClass("read_N");
     	});
    </script>
    
	</header>
</div>