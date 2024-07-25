<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>극장</title>
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
#container {
	padding-top: 30px;
	width: 1000px;
	margin: auto;
}

.theater-title {
	color: #FFFFF2;
	text-align: center;
	font-size: 1.8em;
	font-weight: 600;
}

.sect-theater {
	margin-bottom: 25px;
}

.adv {
	width: 980px;
	margin-bottom: 30px;
}

.nav::before {
	display: none;
}

.sect-schedule {
	width: 1000px;
}
.reservation{
        text-align: center;
        color: #eee;
        font-weight: 500;
        background-color: #FB4357;
        border-color: #FB4357;
        border-radius: 3px;
        display: block;
        width: 110px;
        height: 20px;
        padding-top: 5px;
        padding-bottom: 5px;
        margin-top: 10px;
        height: 30px;
        
    }
    .age-all{
            float: left;
            border: solid 1px;
            background-color: #269C56;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.85em;
    }
    .age-12{
    	float: left;
            border: solid 1px;
            background-color: #E9B62F;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.9em;
    }
    .age-15{
    float: left;
            border: solid 1px;
            background-color: #DD742F;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.9em;
    }
    .age-19{
    float: left;
            border: solid 1px;
            background-color: #D92B35;
            color: white;
            padding: 3px 2px;
            font-weight: 600;
            font-size: 0.9em;
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
     $(document).ready(function() {
	    $('.sect-city ul li').on('click', function() {
	        // 모든 도시의 선택 상태를 초기화합니다.
	        $('.sect-city ul li').removeClass('on');
	        $('.sect-city ul li .area').hide();

	        // 클릭된 도시에 대해 선택 상태를 토글하고 해당 지역 목록을 보여줍니다.
	        $(this).addClass('on');
	        $(this).find('.area').toggle();

	        // 클릭된 도시의 이름을 가져옵니다.
	        var cityName = $(this).find('a').text().trim();

	        // 선택된 도시에 따라 극장 정보를 업데이트합니다.
	        updateTheaterInfo(cityName);

	        // 선택된 도시 이름을 제목으로 설정합니다.
	        $('.theater-tit span').text(cityName);
	    });

	    // 초기에 강남 극장 정보를 보여줍니다.
	    updateTheaterInfo('강남');

	    // 극장 정보를 업데이트하는 함수
	    function updateTheaterInfo(cityName) {
	    	var theaterData = {
	    	'강남': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVgangnam.jpg',
	            'address': '서울특별시 강남구 역삼동 814-6 스타플렉스<br>서울특별시 강남구 강남대로 438 (역삼동)',
	            'phone': '1544-1122',
	            'details': '6관 / 874석'
	        },
	        '강변': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2019/0107/15468415578940.png',
	            'address': '서울특별시 광진구 구의동 546-4 구의아크로타워',
	            'phone': '1544-1122',
	            'details': '9관 / 1,615석'
	        },
	        '건대입구': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2018/0212/15184234292340.jpg',
	            'address': '서울특별시 광진구 화양동 9-7 롯데시네마 건대입구',
	            'phone': '02-454-8832',
	            'details': '11관 / 2,491석'
	        },
	        '구로': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(40).jpg',
	            'address': '서울특별시 구로구 구로동 3-1 월드디지털로 300',
	            'phone': '1544-1122',
	            'details': '7관 / 1,144석'
	        },
	        '대학로': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2015/1027/%EB%8C%80%ED%95%99%EB%A1%9C%EB%AC%B8%ED%99%94%EA%B7%B9%EC%9E%A504.jpg',
	            'address': '서울특별시 종로구 명륜2가 102 대한극장빌딩 3, 4, 5층',
	            'phone': '1544-1122',
	            'details': '8관 / 1,193석'
	        },
	        '동대문': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2022/0708/16572403888080.jpg',
	            'address': '서울특별시 종로구 종로 33 중앙동 74-2 더 트라팰리오',
	            'phone': '1544-1122',
	            'details': '6관 / 854석'
	        },
	        '경기광주': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2018/0309/15205836456080.jpg',
	            'address': '경기도 광주시 고불로 89 더블유디지털타워 1, 2층',
	            'phone': '1544-1122',
	            'details': '5관 / 639석'
	        },
	        '배곧': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2018/0109/15154574298950.jpg',
	            'address': '경기도 시흥시 정왕동 1681 정왕풍림아이원 상가 4층',
	            'phone': '1544-1122',
	            'details': '8관 / 1,244석'
	        },
	        '야탑': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2017/0131/yt.jpg',
	            'address': '경기도 성남시 분당구 야탑동 359 포스코빌딩',
	            'phone': '1544-1122',
	            'details': '9관 / 1,417석'
	        },
	        '화정': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(15).jpg',
	            'address': '경기도 고양시 덕양구 화정동 975-15 킨텍스',
	            'phone': '1544-1122',
	            'details': '11관 / 2,315석'
	        },
	        '평택': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2019/1001/15699150237180.JPG',
	            'address': '경기도 평택시 평택동 936 평택시청 근처',
	            'phone': '1544-1122',
	            'details': '6관 / 894석'
	        },
	        '서현': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2015/0717/%EC%88%98%EC%A0%95cgv%EC%84%9C%ED%98%84.jpg',
	            'address': '경기도 성남시 분당구 서현동 247-3 센트럴시티',
	            'phone': '1544-1122',
	            'details': '10관 / 1,923석'
	        },
	        '논산': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2020/0813/15972881621410.jpg',
	            'address': '충청남도 논산시 중앙로 142',
	            'phone': '1544-1122',
	            'details': '5관 / 715석'
	        },
	        '당진': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(16).jpg',
	            'address': '충청남도 당진시 읍내동 1056 소호타워',
	            'phone': '1544-1122',
	            'details': '7관 / 1,015석'
	        },
	        '대전': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVdeajeon.jpg',
	            'address': '대전광역시 서구 둔산동 1508 한신아파트상가 3층',
	            'phone': '1544-1122',
	            'details': '8관 / 1,144석'
	        },
	        '천안': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVcheonan.jpg',
	            'address': '충청남도 천안시 서북구 성정동 424-11 1, 2층',
	            'phone': '1544-1122',
	            'details': '6관 / 895석'
	        },
	        '아산': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2023/0120/16741750799860.jpg',
	            'address': '충청남도 아산시 배방읍 현방리 68-1 4층',
	            'phone': '1544-1122',
	            'details': '7관 / 1,027석'
	        },
	        '세종': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2015/1208/sejong_mian.jpg',
	            'address': '세종특별자치시 다정북로 205 고려대학교 세종캠퍼스',
	            'phone': '1544-1122',
	            'details': '5관 / 694석'
	        },
	        '광양': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2017/0530/14961119243640.jpg',
	            'address': '전라남도 광양시 태인동 694-2 광양베스트샵 3층',
	            'phone': '1544-1122',
	            'details': '4관 / 585석'
	        },
	        '광주상무': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2015/0206/%EA%B4%91%EC%A3%BC%EC%83%81%EB%AC%B4%EB%A1%9C%EB%B9%842.jpg',
	            'address': '광주광역시 서구 상무대로 856 상무아이원 상가 6층',
	            'phone': '1544-1122',
	            'details': '9관 / 1,310석'
	        },
	        '순천': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVsuncheon.jpg',
	            'address': '전라남도 순천시 중앙로 61 웰빙센터 3층',
	            'phone': '1544-1122',
	            'details': '6관 / 864석'
	        },
	        '익산': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/CGViksan.jpg',
	            'address': '전라북도 익산시 무왕로 1 (무왕동)',
	            'phone': '1544-1122',
	            'details': '5관 / 783석'
	        },
	        '나주': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2017/0911/15051054261810.jpg',
	            'address': '전라남도 나주시 진흥로 71 현대백화점 7층',
	            'phone': '1544-1122',
	            'details': '6관 / 784석'
	        },
	        '정읍': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(13).jpg',
	            'address': '전라북도 정읍시 시기로 197 4층',
	            'phone': '1544-1122',
	            'details': '4관 / 532석'
	        },
	        '거제': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2019/0719/15635066649890.jpg',
	            'address': '경상남도 거제시 중문로 250 금산랜드플래티넘 5층',
	            'phone': '1544-1122',
	            'details': '6관 / 805석'
	        },
	        '김천': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2017/0822/15033599823400.jpg',
	            'address': '경상북도 김천시 자산로 50 경북자산도서관 5층',
	            'phone': '1544-1122',
	            'details': '5관 / 772석'
	        },
	        '마산': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/cgvmasan.jpg',
	            'address': '경상남도 창원시 마산합포구 산호대로 745 마산롯데백화점 6층',
	            'phone': '1544-1122',
	            'details': '7관 / 1,047석'
	        },
	        '북포항': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2015/0914/2%EC%B8%B5%20%EB%A1%9C%EB%B9%84%EC%82%AC%EC%A7%84_%EB%B6%81%ED%8F%AC%ED%95%AD(1).jpg',
	            'address': '경상북도 포항시 북구 신흥로 4 코코몽상무타워 6층',
	            'phone': '1544-1122',
	            'details': '8관 / 1,134석'
	        },
	        '안동': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2018/1210/15444041454110.jpg',
	            'address': '경상북도 안동시 육사로 166 안동점 4층',
	            'phone': '1544-1122',
	            'details': '6관 / 892석'
	        },
	        '통영': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(23).jpg',
	            'address': '경상남도 통영시 중앙로 209 3층',
	            'phone': '1544-1122',
	            'details': '5관 / 725석'
	        },
	        '강릉': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/CGV%20Gangneung.jpg',
	            'address': '강원도 강릉시 경강로 2129 5층',
	            'phone': '1544-1122',
	            'details': '7관 / 1,089석'
	        },
	        '기린': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2023/0131/16751309846220.jpg',
	            'address': '인천광역시 남동구 구월로 59 3층',
	            'phone': '1544-1122',
	            'details': '6관 / 856석'
	        },
	        '원통': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2022/0228/16460104941690.jpg',
	            'address': '경기도 안산시 단원구 원통로 162 원택하나아울렛 4층',
	            'phone': '1544-1122',
	            'details': '8관 / 1,237석'
	        },
	        '인제': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2018/0917/15371775248250.jpg',
	            'address': '강원도 인제군 인제읍 인제로 83 인제이마트 4층',
	            'phone': '1544-1122',
	            'details': '7관 / 1,017석'
	        },
	        '춘천': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/cgvchuncheon.jpg',
	            'address': '강원도 춘천시 지석로 175 춘천이마트 4층',
	            'phone': '1544-1122',
	            'details': '6관 / 874석'
	        },
	        '속초': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(13).jpg',
	            'address': '강원도 속초시 청대로 350 속초롯데쇼핑아울렛 4층',
	            'phone': '1544-1122',
	            'details': '7관 / 1,087석'
	        },
	        '애월': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(13).jpg',
	            'address': '제주특별자치도 제주시 애월읍 신엄리 19-5 힐튼난타워 5층',
	            'phone': '1544-1122',
	            'details': '6관 / 928석'
	        },
	        '제주공항': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2019/0425/15561501411340.jpg',
	            'address': '제주특별자치도 제주시 공항로 2길 14 4층',
	            'phone': '1544-1122',
	            'details': '5관 / 789석'
	        },
	        '서귀포': {
	            'image': 'https://img.cgv.co.kr/Theater/Theater/2014/1211/noimage_final(13).jpg',
	            'address': '제주특별자치도 서귀포시 대정읍 한마음로 168 4층',
	            'phone': '1544-1122',
	            'details': '6관 / 893석'
	        }
	        // 다른 도시들의 정보도 추가할 수 있습니다.
	    };

	        var theaterInfo = theaterData[cityName];

	        // 극장 정보 업데이트
	        $('#theater_img_container img').attr('src', theaterInfo.image); // 극장 이미지 업데이트
	        $('.theater-info .title').html(theaterInfo.address); // 극장 주소 업데이트
	        $('.theater-info .txt-info em:first-child').text(theaterInfo.phone); // 극장 전화번호 업데이트
	        $('.theater-info .txt-info em:last-child').text(theaterInfo.details); // 극장 세부 정보 업데이트
	    }
	});
     
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const dateList = document.getElementById('dateList');
        const items = dateList.querySelectorAll('li');

        items.forEach(item => {
            const link = item.querySelector('a');
            link.addEventListener('click', function(event) {
                event.preventDefault();
                items.forEach(li => li.classList.remove('on'));
                item.classList.add('on');
            });
        });
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const dateList = document.getElementById('dateList');
        const showtimesList = document.getElementById('showtimesList');
        const items = dateList.querySelectorAll('li');

        const showtimesData = {
            '2024-06-19': `
            	<li>
                <div class="col-times">
                    <div class="info-movie">
                        <a href="#"><span class="age-15">15</span><strong>설계자</strong></a>
                        <span class="round lightblue"><em>상영중</em></span>
                        <i>범죄, 드라마</i> / <i>99분</i> / <i>2024.05.29 개봉</i>
                    </div>
                    <div class="type-hall">
                        <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                        <div class="info-timetable">
                        <ul>
						<li><a href="#" onclick="selectTimeAndMovie('설계자','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('설계자','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('설계자','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('설계자','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('설계자','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('설계자','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

					</ul>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="col-times">
                    <div class="info-movie">
                        <a href="#"><span class="age-12">12</span><strong>존 오브 인터레스트</strong></a>
                        <span class="round lightblue"><em>상영중</em></span>
                        <i>드라마</i> / <i>105분</i> / <i>2024.06.05 개봉</i>
                    </div>
                    <div class="type-hall">
                        <div class="info-hall"><ul><li>2D</li><li>6관 10층 (Laser)</li><li>총 72석</li></ul></div>
                        <div class="info-timetable">
                        <ul>
						<li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

					</ul>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="col-times">
                    <div class="info-movie">
                        <a href="#"><span class="age-12">12</span><strong>원더랜드</strong></a>
                        <span class="round lightblue"><em>상영중</em></span>
                        <i>드라마</i> / <i>113분</i> / <i>2024.06.05 개봉</i>
                    </div>
                    <div class="type-hall">
                        <div class="info-hall"><ul><li>2D</li><li>3관 8층</li><li>총 72석</li></ul></div>
                        <div class="info-timetable">
                        <ul>
						<li><a href="#" onclick="selectTimeAndMovie('원더랜드','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

					</ul>
                        </div>
                    </div>
                </div>
            </li>
            `,
            '2024-06-20': `
            	<li>
                <div class="col-times">
                    <div class="info-movie">
                        <a href="#"><span class="age-15">15</span><strong>퓨리오사-매드맥스 사가</strong></a>
                        <span class="round lightblue"><em>상영중</em></span>
                        <i>액션</i> / <i>148분</i> / <i>2024.05.22 개봉</i>
                    </div>
                    <div class="type-hall">
                        <div class="info-hall">
                            <ul>
                                <li>2D</li>
                                <li>6관 10층 (Laser)</li>
                                <li>총 72석</li>
                            </ul>
                        </div>
                        <div class="info-timetable">
                        <ul>
						<li><a href="#" onclick="selectTimeAndMovie('원더랜드','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('원더랜드','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

					</ul>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="col-times">
                    <div class="info-movie">
                        <a href="#"><span class="age-12">12</span><strong>원더랜드</strong></a>
                        <span class="round lightblue"><em>상영중</em></span>
                        <i>드라마</i> / <i>113분</i> / <i>2024.06.05 개봉</i>
                    </div>
                    <div class="type-hall">
                        <div class="info-hall">
                            <ul>
                                <li>2D</li>
                                <li>3관 8층</li>
                                <li>총 72석</li>
                            </ul>
                        </div>
                        <div class="info-timetable">
                        <ul>
						<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
                <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

					</ul>
                        </div>
                    </div>
                </div>
            </li>
            <li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-all">ALL</span><strong>극장판 하이큐!! 쓰레기장의 결전</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>애니메이션</i> / <i>85분</i> / <i>2024.05.15 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall">
                        <ul>
                            <li>2D</li>
                            <li>3관 8층</li>
                            <li>총 72석</li>
                        </ul>
                    </div>
                    <div class="info-timetable">
                    <ul>
        			<li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

        		</ul>
                    </div>
                </div>
            </div>
        </li>
            `,
        '2024-06-21': `
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-15">15</span><strong>퓨리오사-매드맥스 사가</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>액션</i> / <i>148분</i> / <i>2024.05.22 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall">
                        <ul>
                            <li>2D</li>
                            <li>6관 10층 (Laser)</li>
                            <li>총 72석</li>
                        </ul>
                    </div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-15">15</span><strong>설계자</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>범죄, 드라마</i> / <i>99분</i> / <i>2024.05.29 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                <div class="info-timetable">
                <ul>
				<li><a href="#" onclick="selectTimeAndMovie('설계자','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('설계자','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('설계자','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('설계자','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('설계자','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('설계자','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

			</ul>
                </div>
            </div>
        </div>
    </li>
    <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-12">12</span><strong>존 오브 인터레스트</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>드라마</i> / <i>105분</i> / <i>2024.06.05 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall"><ul><li>2D</li><li>6관 10층 (Laser)</li><li>총 72석</li></ul></div>
                <div class="info-timetable">
                <ul>
				<li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

			</ul>
                </div>
            </div>
        </div>
    </li>
        `,
        '2024-06-22':`
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-15">15</span><strong>설계자</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>범죄, 드라마</i> / <i>99분</i> / <i>2024.05.29 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('설계자','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-12">12</span><strong>존 오브 인터레스트</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>드라마</i> / <i>105분</i> / <i>2024.06.05 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>6관 10층 (Laser)</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-12">12</span><strong>원더랜드</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>드라마</i> / <i>113분</i> / <i>2024.06.05 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>3관 8층</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('원더랜드','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        `,
        '2024-06-23':`
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-all">ALL</span><strong>바커스-슈퍼스타가 될 거야</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>애니메이션</i> / <i>85분</i> / <i>2024.06.01 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
    				<li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

    			</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-12">12</span><strong>존 오브 인터레스트</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>드라마</i> / <i>105분</i> / <i>2024.06.05 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>6관 10층 (Laser)</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-15">15</span><strong>퓨리오사-매드맥스 사가</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>액션</i> / <i>148분</i> / <i>2024.05.22 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall">
                    <ul>
                        <li>2D</li>
                        <li>6관 10층 (Laser)</li>
                        <li>총 72석</li>
                    </ul>
                </div>
                <div class="info-timetable">
                <ul>
				<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

			</ul>
                </div>
            </div>
        </div>
    	</li>
        `,
        '2024-06-24':`
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-all">ALL</span><strong>바커스-슈퍼스타가 될 거야</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>애니메이션</i> / <i>85분</i> / <i>2024.06.01 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
    				<li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

    			</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-12">12</span><strong>존 오브 인터레스트</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>드라마</i> / <i>105분</i> / <i>2024.06.05 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>6관 10층 (Laser)</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('존 오브 인터레스트','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-15">15</span><strong>퓨리오사-매드맥스 사가</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>액션</i> / <i>148분</i> / <i>2024.05.22 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall">
                    <ul>
                        <li>2D</li>
                        <li>6관 10층 (Laser)</li>
                        <li>총 72석</li>
                    </ul>
                </div>
                <div class="info-timetable">
                <ul>
				<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

			</ul>
                </div>
            </div>
        </div>
    	</li>
        `,
        '2024-06-25':`
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-15">15</span><strong>설계자</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>범죄, 드라마</i> / <i>99분</i> / <i>2024.05.29 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('설계자','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('설계자','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-15">15</span><strong>범죄도시4</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>액션</i> / <i>109분</i> / <i>2024.04.24 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                <div class="info-timetable">
                <ul>
				<li><a href="#" onclick="selectTimeAndMovie('범죄도시4','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

			</ul>
                </div>
            </div>
        </div>
    </li>
    <li>
    <div class="col-times">
    <div class="info-movie">
        <a href="#"><span class="age-15">15</span><strong>퓨리오사-매드맥스 사가</strong></a>
        <span class="round lightblue"><em>상영중</em></span>
        <i>액션</i> / <i>148분</i> / <i>2024.05.22 개봉</i>
    </div>
    <div class="type-hall">
        <div class="info-hall">
            <ul>
                <li>2D</li>
                <li>6관 10층 (Laser)</li>
                <li>총 72석</li>
            </ul>
        </div>
        <div class="info-timetable">
        <ul>
		<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

	</ul>
        </div>
    </div>
</div>
</li>
        `,
        '2024-06-26':`
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-15">15</span><strong>퓨리오사-매드맥스 사가</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>액션</i> / <i>148분</i> / <i>2024.05.22 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall">
                        <ul>
                            <li>2D</li>
                            <li>6관 10층 (Laser)</li>
                            <li>총 72석</li>
                        </ul>
                    </div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-12">12</span><strong>원더랜드</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>드라마</i> / <i>113분</i> / <i>2024.06.05 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall">
                        <ul>
                            <li>2D</li>
                            <li>3관 8층</li>
                            <li>총 72석</li>
                        </ul>
                    </div>
                    <div class="info-timetable">
                    <ul>
					<li><a href="#" onclick="selectTimeAndMovie('원더랜드','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('원더랜드','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

				</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-all">ALL</span><strong>극장판 하이큐!! 쓰레기장의 결전</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>애니메이션</i> / <i>85분</i> / <i>2024.05.15 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall">
                    <ul>
                        <li>2D</li>
                        <li>3관 8층</li>
                        <li>총 72석</li>
                    </ul>
                </div>
                <div class="info-timetable">
                <ul>
    			<li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

    		</ul>
                </div>
            </div>
        </div>
    </li>
        `,
        '2024-06-27':`
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-all">ALL</span><strong>극장판 하이큐!! 쓰레기장의 결전</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>애니메이션</i> / <i>85분</i> / <i>2024.05.15 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall">
                        <ul>
                            <li>2D</li>
                            <li>3관 8층</li>
                            <li>총 72석</li>
                        </ul>
                    </div>
                    <div class="info-timetable">
                    <ul>
        			<li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

        		</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-15">15</span><strong>범죄도시4</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>액션</i> / <i>109분</i> / <i>2024.04.24 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                <div class="info-timetable">
                <ul>
				<li><a href="#" onclick="selectTimeAndMovie('범죄도시4','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('범죄도시4','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

			</ul>
                </div>
            </div>
        </div>
    </li>
    <li>
    <div class="col-times">
    <div class="info-movie">
        <a href="#"><span class="age-15">15</span><strong>퓨리오사-매드맥스 사가</strong></a>
        <span class="round lightblue"><em>상영중</em></span>
        <i>액션</i> / <i>148분</i> / <i>2024.05.22 개봉</i>
    </div>
    <div class="type-hall">
        <div class="info-hall">
            <ul>
                <li>2D</li>
                <li>6관 10층 (Laser)</li>
                <li>총 72석</li>
            </ul>
        </div>
        <div class="info-timetable">
        <ul>
		<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
<li><a href="#" onclick="selectTimeAndMovie('퓨리오사-매드맥스 사가','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

	</ul>
        </div>
    </div>
</div>
</li>
        `,
        '2024-06-28':`
        	<li>
            <div class="col-times">
                <div class="info-movie">
                    <a href="#"><span class="age-all">ALL</span><strong>바커스-슈퍼스타가 될 거야</strong></a>
                    <span class="round lightblue"><em>상영중</em></span>
                    <i>애니메이션</i> / <i>85분</i> / <i>2024.06.01 개봉</i>
                </div>
                <div class="type-hall">
                    <div class="info-hall"><ul><li>2D</li><li>4관 8층</li><li>총 72석</li></ul></div>
                    <div class="info-timetable">
                    <ul>
    				<li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
            <li><a href="#" onclick="selectTimeAndMovie('바커스-슈퍼스타가 될 거야','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

    			</ul>
                    </div>
                </div>
            </div>
        </li>
        <li>
        <div class="col-times">
            <div class="info-movie">
                <a href="#"><span class="age-12">12</span><strong>원더랜드</strong></a>
                <span class="round lightblue"><em>상영중</em></span>
                <i>드라마</i> / <i>113분</i> / <i>2024.06.05 개봉</i>
            </div>
            <div class="type-hall">
                <div class="info-hall">
                    <ul>
                        <li>2D</li>
                        <li>3관 8층</li>
                        <li>총 72석</li>
                    </ul>
                </div>
                <div class="info-timetable">
                <ul>
				<li><a href="#" onclick="selectTimeAndMovie('원더랜드','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('원더랜드','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('원더랜드','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('원더랜드','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('원더랜드','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
        <li><a href="#" onclick="selectTimeAndMovie('원더랜드','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

			</ul>
                </div>
            </div>
        </div>
    </li>
    <li>
    <div class="col-times">
        <div class="info-movie">
            <a href="#"><span class="age-all">ALL</span><strong>극장판 하이큐!! 쓰레기장의 결전</strong></a>
            <span class="round lightblue"><em>상영중</em></span>
            <i>애니메이션</i> / <i>85분</i> / <i>2024.05.15 개봉</i>
        </div>
        <div class="type-hall">
            <div class="info-hall">
                <ul>
                    <li>2D</li>
                    <li>3관 8층</li>
                    <li>총 72석</li>
                </ul>
            </div>
            <div class="info-timetable">
            <ul>
			<li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','14:50')"><em>14:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
    <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','15:50')"><em>15:50</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
    <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','17:15')"><em>17:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
    <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','18:15')"><em>18:15</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
    <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','20:40')"><em>20:40</em><span class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
    <li><a href="#" onclick="selectTimeAndMovie('극장판 하이큐!! 쓰레기장의 결전','22:35')"><em>22:35</em><span class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

		</ul>
            </div>
        </div>
    </div>
</li>
        `
        };

        items.forEach(item => {
            const link = item.querySelector('a');
            link.addEventListener('click', function(event) {
                event.preventDefault();
                items.forEach(li => li.classList.remove('on'));
                item.classList.add('on');

                const date = item.getAttribute('data-date');
                showtimesList.innerHTML = showtimesData[date] || '<li>상영 정보가 없습니다.</li>';
            });
        });
    });
</script>
</head>
<body>


	<div id="container">
		<div class="sect-common">
			<div class="favorite-wrap">
				<h1 class="theater-title">극장선택</h1>
				<div class="sect-city">
					<ul>
						<li class="on"><a href="#" onclick="selectLocation('서울')">서울</a>
							<div class="area">
								<ul>
									<li><a title="강남" href="#" onclick="selectTheater('강남')">강남</a></li>
									<li><a title="강변" href="#" onclick="selectTheater('강변')">강변</a></li>
									<li><a title="건대입구" href="#"
										onclick="selectTheater('건대입구')">건대입구</a></li>
									<li><a title="구로" href="#" onclick="selectTheater('구로')">구로</a></li>
									<li><a title="대학로" href="#" onclick="selectTheater('대학로')">대학로</a></li>
									<li><a title="동대문" href="#" onclick="selectTheater('동대문')">동대문</a></li>
								</ul>
							</div></li>
						<li><a href="#" onclick="selectLocation('경기/인천')">경기/인천</a>
							<div class="area">
								<ul>
									<li><a title="경기광주" href="#"
										onclick="selectTheater('경기광주')">경기광주</a></li>
									<li><a title="배곧" href="#" onclick="selectTheater('배곧')">배곧</a></li>
									<li><a title="야탑" href="#" onclick="selectTheater('야탑')">야탑</a></li>
									<li><a title="화정" href="#" onclick="selectTheater('화정')">화정</a></li>
									<li><a title="평택" href="#" onclick="selectTheater('평택')">평택</a></li>
									<li><a title="서현" href="#" onclick="selectTheater('서현')">서현</a></li>
								</ul>
							</div></li>
						<li><a href="#" onclick="selectLocation('강원')">강원</a>
							<div class="area">
								<ul>
									<li><a title="강릉" href="#" onclick="selectTheater('강릉')">강릉</a></li>
									<li><a title="기린" href="#" onclick="selectTheater('기린')">기린</a></li>
									<li><a title="원통" href="#" onclick="selectTheater('원통')">원통</a></li>
									<li><a title="인제" href="#" onclick="selectTheater('인제')">인제</a></li>
									<li><a title="춘천" href="#" onclick="selectTheater('춘천')">춘천</a></li>
									<li><a title="속초" href="#" onclick="selectTheater('속초')">속초</a></li>
								</ul>
							</div></li>
						<li><a href="#" onclick="selectLocation('충청/대전')">충청/대전</a>
							<div class="area">
								<ul>
									<li><a title="논산" href="#" onclick="selectTheater('논산')">논산</a></li>
									<li><a title="당진" href="#" onclick="selectTheater('당진')">당진</a></li>
									<li><a title="대전" href="#" onclick="selectTheater('대전')">대전</a></li>
									<li><a title="천안" href="#" onclick="selectTheater('천안')">천안</a></li>
									<li><a title="아산" href="#" onclick="selectTheater('아산')">아산</a></li>
									<li><a title="세종" href="#" onclick="selectTheater('세종')">세종</a></li>
								</ul>
							</div></li>
						<li><a href="#" onclick="selectLocation('경상')">경상</a>
							<div class="area">
								<ul>
									<li><a title="거제" href="#" onclick="selectTheater('거제')">거제</a></li>
									<li><a title="김천" href="#" onclick="selectTheater('김천')">김천</a></li>
									<li><a title="마산" href="#" onclick="selectTheater('마산')">마산</a></li>
									<li><a title="북포항" href="#" onclick="selectTheater('북포항')">북포항</a></li>
									<li><a title="안동" href="#" onclick="selectTheater('안동')">안동</a></li>
									<li><a title="통영" href="#" onclick="selectTheater('통영')">통영</a></li>
								</ul>
							</div></li>
						<li><a href="#" onclick="selectLocation('전라/광주')">전라/광주</a>
							<div class="area">
								<ul>
									<li><a title="광양" href="#" onclick="selectTheater('광양')">광양</a></li>
									<li><a title="광주상무" href="#"
										onclick="selectTheater('광주상무')">광주상무</a></li>
									<li><a title="순천" href="#" onclick="selectTheater('순천')">순천</a></li>
									<li><a title="익산" href="#" onclick="selectTheater('익산')">익산</a></li>
									<li><a title="나주" href="#" onclick="selectTheater('나주')">나주</a></li>
									<li><a title="정읍" href="#" onclick="selectTheater('정읍')">정읍</a></li>
								</ul>
							</div></li>
						<li><a href="#" onclick="selectLocation('제주')">제주</a>
							<div class="area">
								<ul>
									<li><a title="애월" href="#" onclick="selectTheater('애월')">애월</a></li>
									<li><a title="제주공항" href="#"
										onclick="selectTheater('제주공항')">제주공항</a></li>
									<li><a title="서귀포" href="#" onclick="selectTheater('서귀포')">서귀포</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="sect-theater ">
			<h3>
				<img src="https://img.cgv.co.kr/R2014/images/title/h3_theater.gif"
					alt="THEATER">
			</h3>
			<h4 class="theater-tit">
				<span>강남</span>
			</h4>

			<div class="wrap-theaterinfo">
				<div class="box-image">
					<div id="theater_img_container" class="thumb-image">
						<img
							src="https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVgangnam.jpg"
							alt="CGV강남 극장이미지">
					</div>
				</div>
				<div class="box-contents">
					<div class="theater-info">
						<strong class="title">서울특별시 강남구 역삼동 814-6 스타플렉스<br>서울특별시
							강남구 강남대로 438 (역삼동)
						</strong> <span class="txt-info"> <em>1544-1122</em> <em>6관 /
								874석</em> <span></span>
						</span>
					</div>
				</div>
			</div>
		</div>
		<a href=#> <img
			src="https://adimg.cgv.co.kr/images/202405/Barkers/0530_980x90.jpg"
			alt="바커스-슈퍼스타가 될 거야 광고" class="adv">
		</a>
		<div class="showtimes-wrap" style="width: 980px; margin-bottom: 50px;">
			<div class="sect-schedule" style="height: 80px;">
				<div id="slider" class="slider">
					<div class='item-wrap on'>
						<ul id="dateList">
							<li class='on' data-date="2024-06-19">
								<div class="day" data-date="06월19일">
									<a href="#" title='현재 선택' onclick="selectDate('2024-06-19')"><span>06월</span><em>수</em><strong>19</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-20">
								<div class="day" data-date="06월20일">
									<a href="#" onclick="selectDate('2024-06-20')"> <span>06월</span><em>목</em><strong>20</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-21">
								<div class="day" data-date="06월21일">
									<a href="#" onclick="selectDate('2024-06-21')"> <span>06월</span><em>금
									</em><strong>21</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-22">
								<div class="day" data-date="06월22일">
									<a href="#" onclick="selectDate('2024-06-22')"> <span>06월</span><em>토</em><strong>22</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-23">
								<div class="day" data-date="06월23일">
									<a href="#" onclick="selectDate('2024-06-23')"> <span>06월</span><em>일</em><strong>23</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-24">
								<div class="day" data-date="06월24일">
									<a href="#" onclick="selectDate('2024-06-24')"> <span>06월</span><em>월</em><strong>24</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-25">
								<div class="day" data-date="06월25일">
									<a href="#" onclick="selectDate('2024-06-25')"> <span>06월</span><em>화</em><strong>25</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-26">
								<div class="day" data-date="06월26일">
									<a href="#" onclick="selectDate('2024-06-26')"> <span>06월</span><em>수</em><strong>26</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-27">
								<div class="day" data-date="06월27일">
									<a href="#" onclick="selectDate('2024-06-27')"> <span>06월</span><em>목</em><strong>27</strong>
									</a>
								</div>
							</li>
							<li data-date="2024-06-28">
								<div class="day" data-date="06월28일">
									<a href="#" onclick="selectDate('2024-06-28')"> <span>06월</span><em>금</em><strong>28</strong>
									</a>
								</div>
							</li>
						</ul>
					</div>
					<button type="button" class="btn-prev">이전 날짜보기</button>
					<button type="button" class="btn-next">다음 날짜보기</button>
				</div>
			</div>
			<div class="sect-guide">
				<div class="descri-timezone">
					<ul>
						<li><span class="early">모닝</span></li>
						<li><span class="midnight">심야</span></li>
					</ul>
					<p>* 시간을 클릭하시면 빠른 예매를 하실 수 있습니다.</p>
				</div>
			</div>
			<div class="sect-showtimes">
				<ul id="showtimesList">
					<li>
						<div class="col-times">
							<div class="info-movie">
								<a href="#"><span class="age-15">15</span><strong>설계자</strong></a> <span
									class="round lightblue"><em>상영중</em></span> <i>범죄, 드라마</i> / <i>99분</i>
								/ <i>2024.05.29 개봉</i>
							</div>
							<div class="type-hall">
								<div class="info-hall">
									<ul>
										<li>2D</li>
										<li>4관 8층</li>
										<li>총 72석</li>
									</ul>
								</div>
								<div class="info-timetable">
									<ul>
										<li><a href="#"
											onclick="selectTimeAndMovie('설계자','14:50')"><em>14:50</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('설계자','15:50')"><em>15:50</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('설계자','17:15')"><em>17:15</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('설계자','18:15')"><em>18:15</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('설계자','20:40')"><em>20:40</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('설계자','22:35')"><em>22:35</em><span
												class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

									</ul>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="col-times">
							<div class="info-movie">
								<a href="#"><span class="age-12">12</span><strong>존 오브 인터레스트</strong></a> <span
									class="round lightblue"><em>상영중</em></span> <i>드라마</i> / <i>105분</i>
								/ <i>2024.06.05 개봉</i>
							</div>
							<div class="type-hall">
								<div class="info-hall">
									<ul>
										<li>2D</li>
										<li>6관 10층 (Laser)</li>
										<li>총 72석</li>
									</ul>
								</div>
								<div class="info-timetable">
									<ul>
										<li><a href="#"
											onclick="selectTimeAndMovie('존 오브 인터레스트','14:50')"><em>14:50</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('존 오브 인터레스트','15:50')"><em>15:50</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('존 오브 인터레스트','17:15')"><em>17:15</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('존 오브 인터레스트','18:15')"><em>18:15</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('존 오브 인터레스트','20:40')"><em>20:40</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('존 오브 인터레스트','22:35')"><em>22:35</em><span
												class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

									</ul>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="col-times">
							<div class="info-movie">
								<a href="#"><span class="age-12">12</span><strong>원더랜드</strong></a> <span
									class="round lightblue"><em>상영중</em></span> <i>드라마</i> / <i>113분</i>
								/ <i>2024.06.05 개봉</i>
							</div>
							<div class="type-hall">
								<div class="info-hall">
									<ul>
										<li>2D</li>
										<li>3관 8층</li>
										<li>총 72석</li>
									</ul>
								</div>
								<div class="info-timetable">
									<ul>
										<li><a href="#"
											onclick="selectTimeAndMovie('원더랜드','14:50')"><em>14:50</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('원더랜드','15:50')"><em>15:50</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('원더랜드','17:15')"><em>17:15</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('원더랜드','18:15')"><em>18:15</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('원더랜드','20:40')"><em>20:40</em><span
												class='txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>
										<li><a href="#"
											onclick="selectTimeAndMovie('원더랜드','22:35')"><em>22:35</em><span
												class='midnight txt-lightblue'><span class='hidden'>잔여좌석</span>72석</span></a></li>

									</ul>
								</div>
							</div>
						</div>
					</li>
				</ul>
				<p class="info-noti">
				<p>ㆍ입장 지연에 따른 관람 불편을 최소화하기 위해 영화는 10분 후 상영이 시작됩니다.</p>

			</div>
			<form method="post" action="theaterPro" novalidate>
				<input type="hidden" value="${sessionScope.id }" name="id">
				<input type="hidden" id="selected-location" name="location">
				<input type="hidden" id="selected-theater" name="theater"> <input
					type="hidden" id="selected-date" name="date2"> <input
					type="hidden" id="selected-movie" name="movie"> <input
					type="hidden" id="selected-time" name="time">
				<button class="reservation" type="submit" id="submit" title="예매">
					<span>예매하기</span>
				</button>
			</form>
		</div>

	</div>
	<script>
	function selectLocation(location) {
	    document.getElementById('selected-location').value = location;
	}

	// 클릭한 극장(theater)을 저장하는 함수
	function selectTheater(theater) {
	    document.getElementById('selected-theater').value = theater;
	}

	// 클릭한 날짜(date)를 저장하는 함수
	function selectDate(date2) {
	    document.getElementById('selected-date').value = date2;
	}
	// 영화와 시간을 저장하는 함수
	function selectTimeAndMovie(movie, time) {
	    document.getElementById('selected-movie').value = movie;
	    document.getElementById('selected-time').value = time;
	}
	</script>
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
		</article>
		<!-- footer_area (e) -->

	</footer>

	<script type="text/template" id="temp_popup_movie_player">
<div class="popwrap">
<div class="sect-layerplayer">
    <div class="cols-pop-player">
        <h1 class="title" id="movie_player_popup_title"></h1>
        <div class="col-pop-player">
            <div class="warp-pop-player" style="position: relative;">
                <iframe id="ifrm_movie_player_popup" name="ifrm_movie_player_popup" src="about:blank" style="width:800px;height:450px;" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
           
           <div class="sect-replay" style="display:none" id="pop_player_relation_wrap">
              <button class="btn-replay movie_player_inner_popup" type="button" data-gallery-idx="0" id="btn_movie_replay">다시보기</button>
              <!-- 없어지는 영역 -->
              <div class="wrap-relationmovie" id="pop_player_relation_item_wrap">
                 <strong class="title">관련영상</strong>
                 <ul id="pop_player_relation_movie">
                            <li></li>
                        </ul>
              </div><!-- .wrap-relationmovie -->
           </div><!-- .sect-replay -->
           
            </div><!-- .warp-pop-player -->
            <div class="descri-trailer">
                <strong class="title">영상설명</strong>
                <textarea readonly="readonly" id="movie_player_popup_caption"></textarea>
            </div>
        </div><!-- .col-player -->
        <div class="col-pop-playerinfo">
            <div id="movie_player_popup_movie_info"></div>
            <div class="sect-trailer">
                <strong class="title">신규영상</strong>
                <ul>
                    
                </ul>
            </div>
        </div><!-- .col-playerinfo -->
    </div><!-- .cols-player -->
    <button type="button" class="btn-close">닫기</button>
</div>
</div>
</script>
</body>
</html>