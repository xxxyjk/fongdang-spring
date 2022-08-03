<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kh.spring.fongdang.ask.domain.Ask"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/images/investor.ico"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/button.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/header.css">

<!DOCTYPE html>
<html>
<head>


<title>퐁당</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
* {
	box-sizing: border-box;
	padding: 0px;
}

/* .allWrap p, h2, h3, h4, h5, h6 {
	margin-left: 15px;
} */
.allWrap {
	width: 100%;
	text-align: center;
	width: 1200px;
	margin: 0 auto;
	word-break: break-all;
}

.allWrap .top {
	position: relative;
	top: 100px;
}

.allWrap .ask {
	position: relative;
	top: 130px;
	width: 60%;
	margin: 15px auto;
	border-radius: 10px;
	background-color: rgba(153, 153, 153, 0.333);
	display: flex;
	text-align: justify;
}

.allWrap .askWrap {
	align-items: center;
	justify-content: center;
	position: relative;
	top: 200px;
}

.allWrap .content {
	width: 95%;
	margin: 25px 0 30px 10px;
	text-align: left;
	padding: 20px;
	border-radius: 4px;
	background-color: rgba(243, 244, 245, 0.805);
	box-shadow: 0px 2px 4px -1px #0000000f, 0px 4px 6px -1px #0000001a;
}

.allWrap>.askWrap>li, h2 {
	margin-left: 10px;
}

.allWrap .reply {
	position: relative;
	text-align: left;
	top: 135px;
	width: 60%;
	margin: 0 auto;
	border-radius: 10px;
	background-color: rgba(153, 153, 153, 0.333);
	padding: 1px;
}

.allWrap .toggle {
    font-size: 30px;
    transition: all .4s;
    cursor: pointer;
    position: absolute;
    right: 51px;
    cursor: pointer;
}

.allWrap .content {
	margin-top: 20px;
	margin-bottom: 20px;
}

.allWrap .toggle:hover {
	color: #9bbfd9;
}

.allWrap ul, li {
	list-style: none;
}

.allWrap .ask_sort {
	position: relative;
	font-size: 15px;
	color: white;
	top: 5px;
	margin-left: 10px;
	height: 21px;
	background-color: chocolate;
	border: chocolate solid 1.5px;
}

.allWrap .reply_end {
	position: relative;
	font-size: 15px;
	color: rgb(250, 250, 250);
	top: 5px;
	margin-left: 10px;
	height: 21px;
	background-color: rgba(147, 135, 252, 0.819);
	border: rgba(147, 135, 252, 0.819) solid 1.5px;
	box-shadow: 0px 2px 4px -1px #0000000f, 0px 4px 6px -1px #0000001a;
}

.allWrap .reply_end2 {
	position: relative;
	font-size: 15px;
	color: rgb(250, 250, 250);
	top: 5px;
	margin-left: 10px;
	height: 21px;
	background-color: rgb(89, 179, 248);;
	border: rgb(89, 179, 248); solid 1.5px;
	box-shadow: 0px 2px 4px -1px #0000000f, 0px 4px 6px -1px #0000001a;
}

.allWrap .btn {
	margin: 33px 0 20px 10px;
	width: 200px;
}

.ask01 {
	width: 275px;
	text-align: left;
	font-size:18px;
}

.ask_date {
	text-align: right;
	width: 22%;
	position: relative;
	left: 1%;
}

.ask_delete {
	transition: all .3s;
	cursor: pointer;
	width: 80px;
	position: relative;
	left: 138px;
}

.ask_delete:hover {
	color: #EF9A9A;
}

.ask_box {
	margin-top: 10px;
	box-shadow: 0px 2px 4px -1px #0000000f, 0px 4px 6px -1px #0000001a;
	padding: 1px 1px 1px 5px;
	border-radius: 10px;
}

.tg2 {
display: none;
}

</style>
</head>

<body>
	<jsp:include page="../header.jsp" />
	<div class="allWrap">
		<div class="imgWrap"></div>
		<div class="top">
			<p>
			<p
				style="top: 20px; position: relative; font-family: SUIT-SemiBold; font-size: 25px;">${loginInfo.name}
				님의 1:1 문의 내역</p>
			<hr
				style="width: 29%; margin: 0 auto; position: relative; top: 30px; border-style: groove;">
			</p>
		</div>
		<div class="askWrap" style="width: 90%; margin: 0 auto;">
			<ul>
				<li style="display: flex;"><c:if test="${not empty ask}">
						<a href="<%=request.getContextPath()%>/customerCenter/doAsk">
							<button class="btn btn-fill-fcolor">문의하기</button>
						</a>
					</c:if></li>


					<c:forEach items="${ask}" var="ask">
					<form action="deleteAsk.do" method="post" id="deleteAsk">
						<div class="ask_box" style="position: relative;">
							<li style="display: flex; margin-top: 30px;margin-bottom: 10px;">
								<h2 class="ask01">${ask.ask_title}</h2> <span class="ask_sort">${ask.ask_category}문의</span>
								<c:if test="${ask.reply_yn eq 'N'}">
									<span class="reply_end">답변대기</span>
								</c:if> <c:if test="${ask.reply_yn eq 'Y'}">
									<span class="reply_end2">답변완료</span>
								</c:if> <span class="toggle tg1">&#9660</span> <span class="toggle tg2">&#9650</span>
							</li>
							<li class="content">
								<div style="display: flex;">
									<span style="width: 75%;">${ask.ask_content}</span>
									<div class="ask_date">
										<p>${ask.ask_date}</p>


										<p class="ask_delete" id="ask_delete${ask.ask_no}">삭제하기</p>
										<input type="hidden" name="ask_no" value="${ask.ask_no}">


									</div>
								</div>
								<hr style="width: 100%; margin: 20px auto 20px;">

								<h4 style="width: 75%;">
									<c:if test="${ask.reply_yn eq 'N'}">답변을 기다리는 중입니다. </c:if>
								</h4>
								<h4>
									<c:if test="${ask.reply_yn eq 'Y'}">${ask.ans_content}</c:if>
								</h4>

							</li>
						</div>
					</form>
				</c:forEach>
			</ul>
			<c:if test="${empty ask}">
				<div style="position: relative; top: 60px;">
					<h4>등록된 1:1 문의가 없습니다.</h4>
					<h4>궁금하거나 건의할 사항이 있다면 언제든지 문의해주세요!</h4>
				</div>
				<a href="<%=request.getContextPath()%>/customerCenter/doAsk"><button
						class="btn btn-fill-fcolor" style="position: relative; top: 90px;">문의하기</button></a>
			</c:if>
		</div>
	</div>

	

	<div style="margin-top: 450px;">
		<jsp:include page="../footer.jsp" />
	</div>
	

	
	<script>
		$(document).ready(function() {
			var tDegree = 0;
			$(".content").hide();
			
	/* 토글 */
			$(".toggle").click(function() {
				$(this).parent().next().toggle("fast", "swing");	
			});
			$(".tg1").click(function() {
				$(this).next().show();
				$(this).hide();
			});
			$(".tg2").click(function() {
				$(this).prev().show();
				$(this).hide();
			});
			

			$("[id^='ask_delete']").click(function() {
				console.log($(this));
				console.log($(this).parents("form"));
				if (confirm("삭제하시겠습니까?")) {
					$(this).parents("form").submit();
				} else {
					return false;
				}
			});
		});
	</script>
</body>

</html>