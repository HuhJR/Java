<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="No-Cache">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="viewport" content="width=1024">

    
    
    <link rel="alternate" href="http://m.cgv.co.kr">
    <title id="ctl00_ctl00_headerTitle">MY CGV HOME &lt; My CGV | 영화 그 이상의 감동, CGV</title>
   <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
    <style>
        .tbl-breakdown table, .tbl-card table, .tbl-data table {
    border-top: 1px solid #b8b6aa;
    border-bottom: 1px solid #b8b6aa;
}
body, input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 400;
}
table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
    height: 145.5px;
}
thead{
    width: 100%;
    height: 34px;
    background-color: #E2E2E0;
}
    </style>

</head>
    
    
   

   <!-- Contaniner -->
   <div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
        

      <!-- Contents Area -->
       <div id="contents" class="">
        
            
            <!-- Contents Start -->
         
    
<div class="sect-common" style="height: 350px;">
<input type="hidden" id="isTown" name="isTown" value="Y">
<input type="hidden" id="userTownMemberInfo" name="userTownMemberInfo" value="">
    <div class="mycgv-info-wrap" style="height: 250px; margin-top: 50px;">
      <div class="skipnaiv">
         <a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
      </div>
        <div class="sect-person-info">
           <h2 class="hidden">개인화 영역</h2> 
           <div class="box-image">
            <span class="thumb-image">
               <img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif" alt="OOO님 프로필 사진">
               <span class="profile-mask"></span>
            </span>
           </div>
           <div class="box-contents newtype">
              <div class="person-info">
                 <strong>OOO님</strong>
                 <em>this_is_id</em>
                 <button id="go_edit_page" type="button" title="새창열림">나의 정보 변경</button>
              </div>
                <div class="sect-mycgv-reserve movielog col3" style="display: flex;">
                    <div class="box-inner preegg">
                        <a href="#" title="기대되는 영화">
                            <h3>기대되는 영화</h3>
                            <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?</span>
                        </a>
                    </div>
                    <div class="box-inner watched">
                        <a href="#" title="내가 본 영화">
                            <h3>내가 본 영화</h3>
                            <span>관람한 영화들을 한번에 <br>모아 보고 싶다면?</span>
                        </a>
                    </div>
                    <div class="box-inner mvdiary">
                        <a href="#" title="내가 쓴 평점">
                            <h3>내가 쓴 평점</h3>
                            <span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?</span>
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
               <li class="on">
                    <a href="/user/mycgv/?g=1" title="현재 선택">MY KIC HOME <i></i></a>
                </li>
               <li>
                    <a href="/user/mycgv/reserve/?g=1">나의 예매내역 <i></i></a>
                   
               </li>
               <li>
                    <a href="/user/mycgv/myinfo/?g=1">회원정보<i></i></a>
                   <ul>

                         <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1">개인정보 변경</a>
                        </li>
                       <li>
                            <a href="/user/mycgv/myinfo/leave-cjone.aspx?g=1">회원탈퇴</a>
                        </li>
                        
                   </ul>
               </li>
               <li>
                    <a href="#">나의 문의내역 <i></i></a>
                   <ul>
                       <li>
                            <a href="#">1:1 문의</a>
                        </li>
                        <li>
                            <a href="#">분실물 문의</a>
                        </li>
                   </ul>
               </li>
           </ul>
       </div>
    </div>
<div class="col-detail" id="mycgv_contents">
       
<form name="aspnetForm" method="post" action="./list.aspx?g=1" id="aspnetForm" novalidate="novalidate">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjAyMTIyMTg0MmRku2RkFAvCkD19J2zWnHfTY+qaCQ0=">
</div>

<div>

   <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D1AE53DC">
   <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAMkdb+nkg8RL/G16xVqcDPh1JUVjiIIXAQpNIHKkzj23tvY44NDYVtgxRb4YZO0EMkCE08djvBAr1QLtXINigIy44OHEg==">
</div>
    <div class="tit-mycgv">
       <h3>나의 문의내역</h3>
    </div>
   <div class="tit-mycgv">
       <h4>1:1 문의</h4>
   </div>
    <div class="set-btn">
        <p>
            <label for="searchtext"><strong>문의조회</strong></label> <input type="text" id="searchtext" name="searchtext" class="medium" value="" title="검색 키워드 입력">
            <button type="button" id="btnSearch" class="round inblack"><span>검색하기</span></button>
        </p>
        <p class="del">
             
            총 <strong class="txt-red">0</strong>건 
            <button type="submit" id="btnDelete" class="round black"><span>선택삭제</span></button>
        </p>
    </div>
    <div class="tbl-data">
        <table summary="문의내역 및 답변내역에 대한 정보 제공">
            <caption>나의 1:1 문의내역</caption>
          <colgroup>
              <col width="12%">
              <col width="*">
              <col width="21%">
              <col width="13%">
              <col width="15%">
          </colgroup>
            <thead>
                <tr>
                    <th scope="col"><input type="checkbox" id="chkAllItem" name="chkAllItem"><label for="chkAllItem"> 번호</label></th>
                    <th scope="col">제목</th>
                    <th scope="col">등록일</th>
                    <th scope="col">상태</th>
                    <th scope="col">만족도</th>
                </tr>
            </thead>
            <tbody id="items">
                
                
                <tr>
                    <td colspan="7" class="nodata">
                        
                        고객님의 상담 내역이 존재하지 않습니다.
                        
                    </td>
                </tr>
                
            </tbody>
        </table>
    </div>
    <!--?xml version="1.0" encoding="utf-8"?-->
<div class="paging">
</div>

    <div class="sect-mycgv-reserve qna">
        <div class="box-polaroid">
           <div class="box-inner qna">
               <p><strong>자주하시는 질문</strong> <a href="/support/faq/default.aspx" class="round gray on"><span>바로가기</span></a></p>
               <span>고객님들께서 주로 하시는 질문에 대한 답변을<br>한곳에 모아두었습니다.</span>
           </div>
           <div class="box-inner words">
               <p><strong>고객의 말씀</strong> <a href="/support/qna/default.aspx" class="round gray on"><span>문의하기</span></a></p>
               <span>불편사항과 문의사항을 남겨주시면 친절히<br>답변드리겠습니다.</span>
           </div>
       </div>
    </div>
</form>
<script type="text/javascript">
//<![CDATA[

    (function ($) {
        $(function () {

            $('#chkAllItem').checkboxGroup({
                parent: function () { return $('#items'); },
                selector: 'input[name=chkItem]'
            });

            $('#searchtext').on('keypress', function (e) {
                if (e.keyCode == 13) {
                    Search();
                    return false;
                }
            });

            $('#btnSearch').on('click', function () {
                Search();
            });

            $('#btnDelete').on('click', function () {
                if ($("input[name=chkItem]:checked").length < 1) {
                    alert("삭제할 문의건을 먼저 선택해 주세요.");
                    return false;
                }

                if (!confirm("선택하신 문의건을 삭제하시겠습니까?"))
                    return false;

                $('form').submit();
            });

            function Search() {
                location.href = "./list.aspx?searchtext=" + escape($("#searchtext").val());
            }

        });
    })(jQuery);

    //]]>
    </script>

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
     
        <a href="#" class="btn_fixedTicketing">예매하기</a>
        
        <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동"></a>
    </div>
    
   
    <!-- S Footer -->
    <footer>
      <!-- footer_area (s) -->
      
<div id="BottomWrapper" class="sect-ad">
    <iframe src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Bottom" width="100%" height="240" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
</div>
<ul class="policy_list">
    <li><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
    <li><a href="http://corp.cgv.co.kr/company/sustainabilityStrategy/strategy.aspx" target="_blank">지속가능경영</a></li>
    <li><a href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx" target="_blank">IR</a></li>
    <li><a href="http://corp.cgv.co.kr/company/recruit/step/default.aspx" target="_blank">채용정보</a></li>
    <li><a href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx" target="_blank">광고/제휴/출점문의</a></li>
    <li><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
    <li><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
    <li><a href="http://www.cgv.co.kr/rules/privacy.aspx"><strong>개인정보처리방침</strong></a></li>
    <li><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
    <li><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
    <li><a href="http://corp.cgv.co.kr/company/ethicalManagement/ceoMessage.aspx" target="_blank">윤리경영</a></li>
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
            <dd>2017-서울용산-0662 <a href="#none" onclick="goFtc()" class="btn_goFtc">사업자정보확인</a><a></a></dd>
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


</body></html>
