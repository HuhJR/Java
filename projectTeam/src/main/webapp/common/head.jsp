<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=1024">



<link rel="alternate" href="http://m.cgv.co.kr">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/reset.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/layout.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/content.css">

<title>Insert title here</title>
<script>
	function mypage() {
		alert("로그인이 필요합니다.");
	}
	function startSuggest(){
		setTimeout("sendKeyword()",500);	
	}
	function sendKeyword(){
		let keyword=document.querySelector("#keyword").value
		if(keyword !=''){
			console.log(keyword)
			fetch("http://localhost:8080/projectTeam/front/command?keyword="+keyword)
			.then(res => res.text())
			.then(txt => {
				const listView = document.querySelector("#suggestList")
				listView.innerHTML = txt
			})		
		}
	}
</script>
<script type="text/javascript">
        function alertLoginRequired() {
            alert("로그인이 필요합니다.");
            window.location.href = "${pageContext.request.contextPath}/login";  // 로그인 페이지로 리디렉션
        }
    </script>
</head>
<body>
	<div class="header">
		<!-- 서비스 메뉴 -->

		<div class="nav">
			<div class="header_content" style="margin-bottom: 0;">
				<div class="contents">
					<ul class="nav_menu">
						<li style="padding: 0;">
							<h2>
								<a href="${pageContext.request.contextPath}/front/movie">영화</a>
							</h2>
						</li>
						<li style="padding: 0;"><h2>
								<a href="${pageContext.request.contextPath}/front/theater">극장</a>
						</h2></li>
							<li style="padding:0;">
								<h2>
									<c:choose>
										<c:when test="${sessionScope.id == null}">
											<a href="${pageContext.request.contextPath}/front/login" onclick="alertLoginRequired();">예매</a>
										</c:when>
										<c:when test="${sessionScope.id != null}">
											<a href="${pageContext.request.contextPath}/front/reservation" >예매</a>
										</c:when>
									</c:choose>
								</h2>
							</li>
						<li style="padding: 0;"><h2>
							<a href="${pageContext.request.contextPath}/front/main">&nbsp;홈</a>
						</h2></li>
						<li style="padding: 0;"><h2><a href="${pageContext.request.contextPath}/front/snack">먹거리</a></h2></li>
						<li style="padding: 0;"></li>
					</ul>
					<div class="totalSearch_wrap">
						<form name="search">
							<input type="text" id="keyword" autocomplete="off"
								onkeydown="startSuggest()"placeholder="검색어를 입력하세요"
								style="border:none;">
							<hr>
							<div id="suggestList" style="text-align: left; margin-top:25px;" ></div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="header_content">
			<div class="contents">
				<c:if test="${sessionScope.id==null}">
					<h1 onclick="">
						<a href="${pageContext.request.contextPath}/front/main"><img
							src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fw7.pngwing.com%2Fpngs%2F985%2F510%2Fpng-transparent-drawing-movie-camera-film-drinks-night-text-logo-cartoon-thumbnail.png&type=sc960_832"
							alt=""></a><span>KIC MOVIE THEATER</span>
					</h1>
					<ul class="memberInfo_wrap">
						<li><a href="${pageContext.request.contextPath}/front/login"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png"
								alt="로그인"><span>로그인</span></a></li>
						<li><a href="${pageContext.request.contextPath}/front/signup"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png"
								alt="회원가입"><span>회원가입</span></a></li>

					</ul>
				</c:if>
				<c:if test="${sessionScope.id!=null}">
					<h1 onclick="">
						<a href="${pageContext.request.contextPath}/front/main"><img
							src=https://search.pstatic.net/sunny/?src=https%3A%2F%2Fw7.pngwing.com%2Fpngs%2F985%2F510%2Fpng-transparent-drawing-movie-camera-film-drinks-night-text-logo-cartoon-thumbnail.png&type=sc960_832></a><span>KIC
							MOVIE THEATER</span>
					</h1>
					<ul class="memberInfo_wrap">
						<li><a href="${pageContext.request.contextPath}/front/logout"
							class="logout" title="로그아웃"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png"
								alt="로그아웃"><span>로그아웃</span></a></li>

						<c:if test="${sessionScope.id eq 'admin'}">

							<li><a
								href="${pageContext.request.contextPath}/board/boardlistAll"><img
									src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png"
									alt="Board list"><span>Board List</span></a></li>
						</c:if>



						<li><a href="${pageContext.request.contextPath}/front/mypage"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png"
								alt="MY PAGE"><span>MY PAGE</span></a></li>
					</ul>
				</c:if>




			</div>
		</div>
	</div>
</body>