<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=1024">



<link rel="alternate" href="http://m.cgv.co.kr">
<title id="ctl00_ctl00_headerTitle">MY CGV HOME &lt; My CGV | 영화
	그 이상의 감동, CGV</title>
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/reset.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/layout.css">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/content.css">

<style>
#ticket-info {
	margin-top:20px;
	float: left;
	margin-left: 20px;
	font-size: 1.2em;
}
#ticket-info p{
	margin-bottom:3px;
}
.box-inner img {
	float: left;
	margin-right: 20px;
}
.nav::before{
        display: none;
    }
    footer{
    margin-top:300px;
    }
</style>
</head>
<!-- Contaniner -->
<div id="contaniner" class="">
	<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용/ 배경이미지가 없을 경우 class 삭제  -->


	<!-- Contents Area -->
	<div id="contents" class="">


		<!-- Contents Start -->


		<div class="sect-common" style="height: 350px;">
			<input type="hidden" id="isTown" name="isTown" value="Y"> <input
				type="hidden" id="userTownMemberInfo" name="userTownMemberInfo"
				value="">
			<div class="mycgv-info-wrap" style="height: 250px; margin-top: 50px;">
				<div class="skipnaiv">
					<a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
				</div>
				<div class="sect-person-info">
					<h2 class="hidden">개인화 영역</h2>
					<div class="box-image">
						<span class="thumb-image"> <img
							src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif"
							alt="OOO님 프로필 사진"> <span class="profile-mask"></span>
						</span>
					</div>
					<div class="box-contents newtype">
						<div class="person-info">
							<strong>${id }님</strong>
							<button id="go_edit_page" type="button" title="새창열림">나의
								정보 변경</button>
						</div>
						<div class="sect-mycgv-reserve movielog col3"
							style="display: flex;">
							<div class="box-inner preegg">
								<a href="#" title="기대되는 영화">
									<h3>기대되는 영화</h3> <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?
								</span>
								</a>
							</div>
							<div class="box-inner watched">
								<a href="#" title="내가 본 영화">
									<h3>내가 본 영화</h3> <span>관람한 영화들을 한번에 <br>모아 보고 싶다면?
								</span>
								</a>
							</div>
							<div class="box-inner mvdiary">
								<a href="#" title="내가 쓴 평점">
									<h3>내가 쓴 평점</h3> <span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?
								</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="cols-content" id="menu">
			<div class="col-aside">
				<div class="skipnaiv">
					<a href="#mycgv_contents" id="skipMycgvMenu">MY MOVIE 서브메뉴 건너띄기</a>
				</div>
				<h2>MY MOVIE 서브메뉴</h2>
				<div class="snb">
					<ul>
						<li class="on"><a
							href="${pageContext.request.contextPath}/front/mypage"
							title="현재 선택">MY KIC HOME</a></li>
						<li><a href="${pageContext.request.contextPath}/front/mypage">회원정보<i></i></a>
							<ul>

								<li><a
									href="${pageContext.request.contextPath}/front/updateform">개인정보
										변경</a></li>
								<li><a
									href="${pageContext.request.contextPath}/front/deleteform">회원탈퇴</a>
								</li>

							</ul></li>
						<li><a href="#">나의 문의내역 <i></i></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/board/boardlist">1:1
										문의</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="col-detail" id="mycgv_contents">


				<div class="tit-mycgv">
					<h3>MY 예매내역</h3>
					<p>
					<c:if test="${mem==null}">
						<em>0건</em> 
						</c:if>
						<c:if test="${mem!=null}">
						<em>1건</em> 
						</c:if>
					</p>
				</div>


				<div>
					<!-- MY 예매내역 -->
					<input type="hidden" id="hidCancelReserveNo"
						name="hidCancelReserveNo">
					<div class="sect-base-booking">
						<div class="box-polaroid">
							<div class="box-inner">
								<c:if test="${mem==null}">
									<div class="lst-item">고객님의 최근 예매내역이 존재하지 않습니다.</div>
								</c:if>
								<c:if test="${mem!=null}">
									<div class="lst-item">
										<c:choose>
											<c:when test="${mem.movieid == '1'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88266/88266_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '2'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88214/88214_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '3'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88148/88148_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '4'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88272/88272_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '5'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88283/88283_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '6'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88220/88220_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '7'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88239/88239_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '8'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88270/88270_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '9'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88154/88154_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '10'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88226/88226_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '11'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88104/88104_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '12'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86884/86884_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '13'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88218/88218_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '14'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88237/88237_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '15'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88113/88113_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '16'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88183/88183_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '17'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88168/88168_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '18'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88265/88265_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '19'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88181/88181_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:when test="${mem.movieid == '20'}">
												<img
													src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88234/88234_320.jpg"
													width="120px" class="img" alt="Movie Poster">
											</c:when>
											<c:otherwise>
												<img src="" width="120px" class="img">
											</c:otherwise>
										</c:choose>
										<div class="text-info" id="ticket-info">
											<p class="moviename">영화명: ${mem.moviename }</p>
											<p class="viewtype">2D</p>
												<p class="movieage">시청등급: ${mem.movieage}세관람가</p>
											<hr>
											<p class="movielocation">관람 극장: ${mem.locname} ${mem.theatername }</p>
											<p class="moviedate">관람 일시: ${mem.date2name }
												${mem.timename }</p>
										</div>
									</div>
								</c:if>
							</div>
						</div>
					</div>

				</div>
			</div>


		</div>
	</div>


</div>


<!--/ Contents End -->
</div>
<!-- /Contents Area -->
</div>

<!-- S 예매하기 및 TOP Fixed 버튼 -->
<div class="fixedBtn_wrap">

	<a href="#" class="btn_fixedTicketing">예매하기</a> <a href="#none"
		class="btn_gotoTop"><img
		src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png"
		alt="최상단으로 이동"></a>
</div>


<!-- S Footer -->
<footer>
	<!-- footer_area (s) -->

	<div id="BottomWrapper" class="sect-ad">
		<iframe
			src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Bottom"
			width="100%" height="240" title="" frameborder="0" scrolling="no"
			marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
	</div>
	<ul class="policy_list">
		<li><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
		<li><a
			href="http://corp.cgv.co.kr/company/sustainabilityStrategy/strategy.aspx"
			target="_blank">지속가능경영</a></li>
		<li><a
			href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx"
			target="_blank">IR</a></li>
		<li><a
			href="http://corp.cgv.co.kr/company/recruit/step/default.aspx"
			target="_blank">채용정보</a></li>
		<li><a
			href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx"
			target="_blank">광고/제휴/출점문의</a></li>
		<li><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
		<li><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
		<li><a href="http://www.cgv.co.kr/rules/privacy.aspx"><strong>개인정보처리방침</strong></a></li>
		<li><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
		<li><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
		<li><a
			href="http://corp.cgv.co.kr/company/ethicalManagement/ceoMessage.aspx"
			target="_blank">윤리경영</a></li>
		<li><a href="/company/cyberAudit.aspx" class="empha-red">사이버감사실</a></li>
	</ul>
	<article class="company_info_wrap">
		<section class="company_info">
			<address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
			<dl class="company_info_list">
				<dt>대표이사</dt>
				<dd>허민회</dd>
				<dt>사업자등록번호</dt>
				<dd>104-81-45690</dd>
				<dt>통신판매업신고번호</dt>
				<dd>
					2017-서울용산-0662 <a href="#none" onclick="goFtc()" class="btn_goFtc">사업자정보확인</a><a></a>
				</dd>
			</dl>
			<dl class="company_info_list">
				<dt>호스팅사업자</dt>
				<dd>CJ올리브네트웍스</dd>
				<dt>개인정보보호 책임자</dt>
				<dd>도형구</dd>
				<dt>대표이메일</dt>
				<dd>cjcgvmaster@cj.net</dd>
			</dl>
			<p class="copyright">© CJ CGV. All Rights Reserved</p>
		</section>
		</section>
	</article>

</footer>
</body>
</html>
