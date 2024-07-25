<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title id="ctl00_ctl00_headerTitle">MY CGV HOME &lt; My CGV | 영화 그 이상의 감동, CGV</title>
   <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
<style>
    .nav::before{
        display: none;
    }
    .tbl_info_txt {
    padding: 0 10px;
    line-height: 30px;
    border-top: 1px solid #b8b6aa;
    background-color: #f8f8f8;
    text-align: right;
    }
    .tbl_notice_list {
    table-layout: fixed;
    border-top: solid 1px #d6d4ca;
    border-bottom: solid 1px #b8b6aa;
    }
    body, input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-weight: 400;
    }
    .tbl_notice_list.tbl_left th {
    padding: 15px 0px 15px 13px;
    border-top: 1px solid #d6d4ca;
    text-align: left;
}
.tbl_notice_list tbody td {
    padding: 15px 0px 13px 0px;
    border-top: solid 1px #d6d4ca;
    text-align: center;
}
table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    unicode-bidi: isolate;
    border-spacing: 2px;
    border-color: gray;
}
#resetsubmit{
    margin-left: 600px;
    margin-top: 30px;
}
</style>
</head>
<body>
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
                 <strong>${id }님</strong>
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
                    <a href="${pageContext.request.contextPath}/front/mypage" title="현재 선택">MY KIC HOME <i></i></a>
                </li>
               <li>
                    <a href="#">나의 예매내역 <i></i></a>
                   
               </li>
               <li>
                    <a href="${pageContext.request.contextPath}/front/mypage">회원정보<i></i></a>
                   <ul>

                         <li>
                            <a href="${pageContext.request.contextPath}/front/updateform">개인정보 변경</a>
                        </li>
                       <li>
                            <a href="${pageContext.request.contextPath}/front/deleteform">회원탈퇴</a>
                        </li>
                        
                   </ul>
               </li>
               <li>
                    <a href="#">나의 문의내역 <i></i></a>
                   <ul>
                       <li>
                            <a href="${pageContext.request.contextPath}/front/boardlist">1:1 문의</a>
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
    <h2 class="tit">1대1 문의</h2><br>
    <p class="stit">자주찾는 질문에서 원하는 답변을 찾지 못하셨군요 <br>
        불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변 드리겠습니다.</p><br>
        <form id="form1" name="form1" method="post" novalidate="novalidate"  
        enctype="multipart/form-data" action="boardUpdatePro?boardnum=${board.boardnum}">
            <fieldset>
                <legend>이메일 문의</legend>
                <div class="tbl_area">
                    <p class="tbl_info_txt">체크(<em><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico_redstar.png" alt="필수"></em>)된 항목은 필수 입력 사항입니다.</p>

                    <table cellspacing="0" cellpadding="0" class="tbl_notice_list tbl_left">
                        <caption>목록</caption>
                        <colgroup>
                            <col style="width:96px">
                            <col style="width:303px">
                            <col style="width:96px">
                            <col style="width:303px">
                        </colgroup>
                        <tbody>                           
                            <tr >
                                <th scope="row" style="border-top: none;"><label for="inp_title">제목 <em><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico_redstar.png" alt="필수"></em></label></th>
                                <td colspan="3" style="border-top: none;">
                                    <input type="text" id="inp_title" name="subject" class="inp01" style="width: 672px;" value="${board.subject }">
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><label for="inp_textbox">내용 <em><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico_redstar.png" alt="필수"></em></label></th>
                                <td colspan="3">
                                    <textarea cols="60" rows="5" id="content" name="content" class="inp_txtbox01" style=" height:94px !important;" onkeyup="javascript:checkByte(this,5000,'sp_ad_content_size_1', 'sp_ad_content_size_2');" >${board.content }</textarea>
                                </td>
                            </tr>
                            
                            <tr>
                                <th scope="row"><label for="voc_upload_file">첨부파일</label></th> 
                                <td colspan="3" style="text-align: left;">
                                     <input style="width:300px; margin-bottom:10px;" type="file" id="voc_upload_file" name="file2" title="voc파일 업로드" size="51"  onclick="javascript:alert('주민번호 등 개인정보가 포함된 파일이 첨부되지 않도록 유의하시기 바랍니다.');"> 
                                     <br>*<b>첨부가능 확장자</b>: 이미지(jpg, gif, bmp, png, jpeg) ,워드문서(hwp, ppt, pptx, xls, xlsx, doc, docx, zip, pdf, txt)
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="box-btn qna_email" id="resetsubmit">
                    <button style="margin-right:20px " type="reset" class="round gray"><span style="padding:0 14px;">취소</span></button>
                    <button style="width:80px" class="round inred" type="submit" id="emailsubmit"><span>수정완료</span></button>
                </div>
            </fieldset>
        </form>
    
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
