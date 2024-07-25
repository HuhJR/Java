<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화</title>
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
    #container{
        width: 1000px;
        margin: auto;
        padding-top: 30px;
    }
    .movie-title{
        font-size: 2.3em;
        width: 980px;
        color: #000;
        border-bottom: solid;
        border-color: #000;
        margin-bottom: 30px;
        padding-bottom: 15px;
    }
    .movies{
        text-align: center;
    }
    .movies ol {
        margin: 0px;
        padding: 0px;
    }
    .movies ol li{
        margin-bottom: 40px;
    }
    .main-movie ol li{
        list-style: none;
        width: 200px;
        height: 400px;
        float: left;
    }
    .main-movie ol .li-margin{
        margin-right: 60px;
    }
    .image {
            position: relative;
            display: inline-block;
            width: 195px;
            height: 258px;
        }
        .image img{
            width: 100%;
            height: 100%;
        }
    .textaa {
            visibility: hidden;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7); /* 배경을 반투명하게 설정 */
            color: #fff;
            text-align: center;
            border-radius: 5px;
            position: absolute;
            z-index: 1;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 0.3s;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            box-sizing: border-box;
        }
    .image .textaa::after {
            content: "";
            position: absolute;
            
            left: 50%;
            margin-left: -5px;
            border-width: 5px;
            border-style: solid;
            border-color: #333 transparent transparent transparent;
        }

        .image:hover .textaa {
            visibility: visible;
            opacity: 1;
        }
    .rank{
        font-size: 1.2em;
        font-weight: 400;
        color: #eee;
        background: #333333;
        width: 198px;
        height: 22px;
        margin-bottom: 5px;
        padding-top: 5px;
    }
    .movie-info{
        text-align: left;
    }
    .title{
        font-size: 1.1em;
        font-weight: 600;
        margin-bottom: 5px;
    }
    .score{
        font-size: 0.9em;
        font-weight: 500;
    }
    .txt-info{
        font-size: 0.9em;
        font-weight: 500;
        margin-bottom: 3px;
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
        padding-top: 7px;
    }
    .adv{
        width: 980px;
        margin-bottom: 30px;
        display: block;
        margin-left: 0px;
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
</head>
<body> 

    <div id="container">
        <main>
            <div class="main-movie">
                <div  class="movie-title">
                    <h1>영화</h1>
                </div>
                <div class="movies">
                    <ol>
                        <li class="li-margin" style="margin-left: 0px;">
                            <div class="movie-image" >
                                <p class="rank" style="background-color: #FB4357;">No.1</p>   
                                <a href="${pageContext.request.contextPath}/detailpage/detail01">
                                    <span class="image">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88266/88266_320.jpg" alt="원더랜드 포스터" onerror="errorImage(this)"/>
                                        <span class="textaa">
                                            언제 어디서든 다시 만날 수 있습니다<br><br>

                                        죽은 사람을 인공지능으로 복원하는
                                        ‘원더랜드’ 서비스가 일상이 된 세상,
                                        어린 딸에게 자신의 죽음을 숨기기 위해
                                        ‘원더랜드’ 서비스를 의뢰한 ‘바이리’와
                                        사고로 누워있는 남자친구 ‘태주’를 ‘원더랜드’에서
                                        우주인으로 복원해 행복한 일상을 나누는 ‘정인’.
                                        사람들은 더 이상
                                        그리워하거나 슬퍼하지 않는 삶을 선택할 수 있게 된다.
                                            </span>
                                    </span>
                                </a>
                            </div>
                            
                            <div class="movie-info">
                                <a href=#>
                                    <span class="age-12">12</span><p class="title">원더랜드</p>
                                </a>
                                <div class="score">
                                    <p class="percent">예매율  24.5%</p>
                                </div>
        
                                <span class="txt-info">
                                    <p>
                                        2024.06.05 개봉
                                    </p>
                                </span>
                                <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                            </div>
                        </li>
                        <li class="li-margin">
                            <div class="movie-image" >
                                <p class="rank" style="background-color: #FB4357;">No.2</p>   
                                <a href="${pageContext.request.contextPath}/detailpage/detail02">
                                    <span class="image">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88214/88214_320.jpg" alt="극장판 하이큐!! 쓰레기장의 결전 포스터" onerror="errorImage(this)"/>
                                        <span class="textaa">                                        
                                            봄철 고교 배구대회 1회전과 2회전에서
                                            우승 후보를 차례로 꺾은 카라스노 고등학교는<br>
                                            마침내 3회전에서
                                            인연의 라이벌 네코마 고등학교와 맞붙게 된다. <br><br>
                                            
                                            공식 경기에서 처음으로 대결하는 두 고등학교,
                                            통칭 까마귀 VS 고양이 ‘쓰레기장의 결전’.
                                            약속의 땅에서 ‘한 번 더’가 없는 싸움이 드디어 시작된다!
                                            </span>
                                    </span>
                                </a>
                            </div>
                            
                            <div class="movie-info">
                                <a href=#>
                                    <span class="age-all">ALL</span><p class="title">극장판 하이큐!! 쓰레기장의 결전</p>
                                    
                                </a>
                                <div class="score">
                                    <p class="percent">예매율  14.8%</p>
                                </div>
        
                                <span class="txt-info">
                                    <p>
                                        2024.05.15 개봉
                                    </p>
                                </span>
                                <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                            </div>
                        </li>
                        <li class="li-margin">
                            <div class="movie-image" >
                                <p class="rank" style="background-color: #FB4357;">No.3</p>   
                                <a href="${pageContext.request.contextPath}/detailpage/detail03">
                                    <span class="image">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88148/88148_320.jpg" alt="퓨리오사-매드맥스 사가 포스터" onerror="errorImage(this)"/>
                                        <span class="textaa">
                                            문명 붕괴 45년 후,

                                            황폐해진 세상 속 누구에게도 알려지지 않은
                                            
                                            풍요가 가득한 ‘녹색의 땅’에서 자란 ‘퓨리오사’(안야 테일러-조이)는
                                            
                                            바이커 군단의 폭군 ‘디멘투스’(크리스 헴스워스)의 손에 모든 것을 잃고 만다. <br><br>
                                            
                                             
                                            
                                            가족도 행복도 모두 빼앗기고 세상에 홀로 내던져진 ‘퓨리오사’는
                                            
                                            반드시 고향으로 돌아가겠다는 어머니와의 약속을 지키기 위해
                                            
                                            인생 전부를 건 복수를 시작하는데...
                                        </span>
                                    </span>
                                </a>
                            </div>
                            
                            <div class="movie-info">
                                <a href=#>
                                    <span class="age-15">15</span><p class="title">퓨리오사-매드맥스 사가</p>
                                </a>
                                <div class="score">
                                    <p class="percent">예매율  13.5%</p>
                                </div>
        
                                <span class="txt-info">
                                    <p>
                                        2024.05.22 개봉
                                    </p>
                                </span>
                                <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                            </div>
                        </li>
                        <li>
                            <div class="movie-image" >
                                <p class="rank">No.4</p>   
                                <a href="${pageContext.request.contextPath}/detailpage/detail04">
                                    <span class="image">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88272/88272_320.jpg" alt="명탐정 코난 VS 괴도 키드 포스터" onerror="errorImage(this)"/>
                                        <span class="textaa">
                                            “괴도 1412호, 이름하여 괴도 KID”<br><br>

                                            암호가 섞인 예고장이 보내진 그곳에는
                                            월하의 마술사, 괴도 키드가 나타난다.
                                            세상을 떠들썩하게 만들며 인기를 얻고 있는 그의 정체는
                                            에코다 고등학교 2학년 쿠로바 카이토.
                                            수수께끼의 조직에 살해당한 세계적인 마술사였던
                                            아버지 쿠로바 도이치의 뒤를 이어
                                            사건의 진상을 파헤치기 위해 2대 ‘괴도 키드’가 되어
                                            도이치가 쫓던 ‘빅 주얼’과 조직의 정체를 향해 다가간다.
                                        </span>
                                    </span>
                                </a>
                            </div>
                            
                            <div class="movie-info">
                                <a href=#>
                                    <span class="age-12">12</span><p class="title">명탐정 코난 VS 괴도 키드</p>
                                </a>
                                <div class="score">
                                    <p class="percent">예매율  7.8%</p>
                                </div>
        
                                <span class="txt-info">
                                    <p>
                                        2024.06.05 개봉
                                    </p>
                                </span>
                                <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                            </div> 
                        </li>
                    </ol>
                <ol>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.5</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail05">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88283/88283_320.jpg" alt="나쁜 녀석들-라이드 오어 다이 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        마이애미 강력반 최고의 콤비
                                        ‘마이크’(윌 스미스)와 ‘마커스’(마틴 로렌스). <br><br>
                                        가족 같은 ‘하워드’(조 판토리아노) 반장이 사망 전
                                        마약 카르텔 조직의 비리에 연루되었다는 뉴스 속보를 접하게 된다. <br><br>
                                        
                                        하지만 아무도 믿지 말라는 ‘하워드’ 반장의 비밀 메시지를 받은
                                        ‘마이크’와 ‘마커스’ 형사는
                                        사건의 진실을 밝히기 위해 위험한 수사를 시작한다.
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-15">15</span><p class="title">나쁜 녀석들-라이드 오어 다이</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  7.2%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.06.06 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.6</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail06">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88220/88220_320.jpg" alt="설계자 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        “정말 우연이라고 생각해요?”   <br><br> 
                                        의뢰받은 청부 살인을 사고사로 조작하는 설계자 ‘영일’(강동원)
                                        그의 설계를 통해 우연한 사고로 조작된 죽음들이
                                        실은 철저하게 계획된 살인이라는 것을 아무도 알지 못한다. <br><br>
                                        사고인가<br><br>
                                        살인인가<br><br>
                                        그의 실체가 드러나기 시작했다!
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-15">15</span><p class="title">설계자</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  6.9%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.29 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.7</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail07">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88239/88239_320.jpg" alt="드라이브 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        도심 한복판을 질주하는 자동차 트렁크에 갇힌
                                        인기 스트리머가 실시간 라이브 방송을 하며
                                        필사의 탈출을 감행하는 드라이빙 액션 스릴러
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-15">15</span><p class="title">드라이브</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  6.3%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.06.12 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li>
                        <div class="movie-image" >
                            <p class="rank">No.8</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail08">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88270/88270_320.jpg" alt="존 오브 인터레스트 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        독일 장교 루돌프 회스(크리스티안 프리델)의 가족이 사는
                                        그들만의 꿈의 왕국 아우슈비츠. <br>
                                        아내 헤트비히(산드라 휠러)가 정성스럽게 가꾼 꽃이 만발한 정원에는
                                        재잘거리는 아이들의 웃음소리로 가득하다. <br>
                                        마치 한 폭의 그림 같은 집. <br><br>
                                        과연 악마는 다른 세상을 사는가?
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-12">12</span><p class="title">존 오브 인터레스트</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  3.8%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.06.05 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                </ol>
                <ol>
                    <a href=#>
                        <img src="https://adimg.cgv.co.kr/images/202405/Barkers/0530_980x90.jpg" alt="바커스-슈퍼스타가 될 거야 광고"  class="adv">
                        
                    </a>
                </ol>
                <ol>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.9</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail09">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88154/88154_320.jpg" alt="바커스-슈퍼스타가 될 거야 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        “나는 슈퍼스타가 될 거야!”<br><br>

                                        슈퍼스타를 꿈 꿔왔던 ‘로지’와 친구들은
                                        유명해지기 위해 다양한 종류의 영상들을

                                        인터넷에 올리지만 반응이 좋지는 않다.

                                        그러던 중 우연히 옆집에 이사를 온 슈퍼스타 ‘캣’을 만나게 되고

                                        ‘로지’의 꿈을 알게 된 ‘캣’은 함께 무대에 오를 것을 제안한다.

                                        단 조건은 그동안 함께한 친구들을 버리고
                                        ‘로지’만 함께 무대에 오르는 것 <br><br>

                                        거부할 수 없는 ‘캣’의 제안에 ‘로지’의 선택은?
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                               <span class="age-all">ALL</span><p class="title">바커스-슈퍼스타가 될 거야</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  3.5%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.06.01 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.10</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail10">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88226/88226_320.jpg" alt="그녀가 죽었다 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        “나쁜 짓은 절대 안 해요. 그냥 보기만 하는 거예요.” <br><

                                        고객이 맡긴 열쇠로 그 집에 들어가
                                        남의 삶을 훔쳐보는 취미를 지닌 공인중개사 ‘구정태’.
                                        편의점 소시지를 먹으며 비건 샐러드 사진을 포스팅하는
                                        SNS 인플루언서 ‘한소라’에게 흥미를 느끼고 관찰하기 시작한다. <br>

                                        “관찰 152일째, 그녀가… 죽었습니다.” <br>
                                        스스로 범인을 찾아야 하는 ‘구정태’는 ‘한소라’의 SNS를 통해
                                        주변 인물들을 뒤지며 진범을 찾아 나서는데…
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-15">15</span><p class="title">그녀가 죽었다</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  2.4%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.15 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.11</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail11">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88104/88104_320.jpg" alt="범죄도시4 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        신종 마약 사건 3년 뒤,
                                        괴물형사 ‘마석도’(마동석)와 서울 광수대는
                                        배달앱을 이용한 마약 판매 사건을 수사하던 중
                                        수배 중인 앱 개발자가 필리핀에서 사망한 사건이
                                        대규모 온라인 불법 도박 조직과 연관되어 있음을 알아낸다. <br><br>
                                        나쁜 놈 잡는데 국경도 영역도 제한 없다!
                                        업그레이드 소탕 작전! 거침없이 싹 쓸어버린다!
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-15">15</span><p class="title">범죄도시4</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  1.4%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.04.14 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li>
                        <div class="movie-image" >
                            <p class="rank">No.12</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail12">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86884/86884_320.jpg" alt="소울메이트 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        “날도 더웠고 수업도 지루했고.. 그렇게 졸리고 나른하던 날에 너를 처음 만났어”
                                        1998년, 처음 만났다 <br>

                                        “누굴 좋아하면 용기내야 된대”
                                        2004년, 첫사랑이 생겼다 <br>

                                        “몰랐어? 나 원래 이렇게 살아”
                                        2010년, 각자 어른이 되어간다 <br>

                                        “가장 그리운 건…너였어”
                                        2014년, 흔적을 따라간다 <br><br>

                                        “이젠 니 얼굴을 그리고 싶어. 사랑없인 그릴 수조차 없는 그림 말이야”
                                        지금, 그리움을 그리다

                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-12">12</span><p class="title">소울메이트</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  1.0%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.31 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                </ol>
                <ol>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.13</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail13">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88218/88218_320.jpg" alt="분노의 강 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        “ 행복하게 살자, 우리”

                                        모두가 모르는 반쪽의 진실<br>
                                        

                                        아버지 ‘기철’은 소중한 가족과

                                        철책의 반대편, 내일이 있는 삶을 꿈꾸며

                                        목숨 건 모험에 뛰어든다 <br>

                                        

                                        하지만 그의 계획은 수포로 돌아가고,

                                        아들 ‘철수’만이 살아남는다.

                                        

                                        그로부터 10년 후, 모든 걸 잃은 ‘철수’ 앞에

                                        한줄기 빛 ‘연희’가 나타나고

                                        ‘철수’는 다시 새로운 세상을 꿈꾸게 되는데…
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-12">12</span><p class="title">분노의 강</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.9%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.29 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.14</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail14">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88237/88237_320.jpg" alt="결속밴드 라이브 -항성- 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        인기 애니메이션 [외톨이 THE ROCK!]의 오리지널 성우가
                                        직접 참여한 공연 실황으로 ‘결속밴드’의 음악을
                                        음원보다 더 뜨겁게 즐기며
                                        애니메이션의 감동을 이어갈 첫 번째 라이브 콘서트
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-all">ALL</span><p class="title">결속밴드 라이브 -항성-</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.6%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.29 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.15</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail15">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88113/88113_320.jpg" alt="창가의 토토 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        남들과 조금 다르다는 이유로
                                        다니던 초등학교에서 쫓겨나게 된 ‘토토’는
                                        엄격한 규율로 가르치는 이전 학교와 달리,
                                        있는 그대로의 ‘토토’를 품어주는
                                        새로운 학교로 가게 된다.
                                        인자한 교장 선생님, 전차로 만들어진 교실,
                                        다양한 친구들과 함께하는 그곳에서
                                        ‘토토’는 모든 것이 새롭고 설레는 나날을 맞이하는데…
                                        <br><br>
                                        사랑스러운 토토의 세계로 초대합니다!
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-all">ALL</span><p class="title">창가의 토토</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.6%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.29 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li>
                        <div class="movie-image" >
                            <p class="rank">No.16</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail16">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88183/88183_320.jpg" alt="가필드 더 무비 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        상귀찮 집냥이, 바쁘고 험난한 세상에 던져졌다!
                                        <br><br>
                                        집사 ‘존’과 반려견 ‘오디’를 기르며
                                        평화로운 나날을 보내던 집냥이 ‘가필드’.
                                        어느 날, 험악한 길냥이 무리에게 납치당해
                                        냉혹한 거리로 던져진다.
                                        돌봐주는 집사가 없는 집 밖 세상은
                                        너무나도 정신없게 돌아가고
                                        길에서 우연히 다시 만난 아빠 길냥이 ‘빅’은
                                        오히려 ‘가필드’를 위기에 빠지게 하는데…
                                        <br><br>
                                        험난한 세상, 살아남아야 한다!
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-all">ALL</span><p class="title">가필드 더 무비</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.6%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.15 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                </ol>
                <ol>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.17</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail17">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88168/88168_320.jpg" alt="드림 시나리오 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        소심하고, 한심하고, 평범 그 자체여서
                                        언제 어디서나 존재감 없는 ‘폴’로 인해 온 세상이 떠들썩해진다! <br>

                                        왜? 그가 지구상 모두의 꿈에 나타나고 있기 때문에!
                                        <br>
                                        “실존 인물 맞나요? 왜 당신 꿈을 꾸죠? 도대체 누구세요?”
                                        SNS 메시지 폭주, 인터뷰 출연, 광고 모델 요청은 물론,
                                        심지어 꿈속 만남이 현실로 이어지는 기막힌 일까지!
                                        <br>
                                        꿈속 남자에서 모두가 꿈꾸는 남자로 거듭난 ‘폴’!
                                        하지만 갑자기 그가 등장하는 모든 꿈들이 악몽이 되는데…
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                <span class="age-15">15</span><p class="title">드림 시나리오</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.6%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.29 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin">
                        <div class="movie-image" >
                            <p class="rank">No.18</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail18">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88265/88265_320.jpg" alt="키타로 탄생 게게게의 수수께끼 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        “절대 엿봐서는 안되는 금지된 이야기”
                                        <br><br>
                                        류가 가문의 당주 '토키사다'의 장례식 참석을 명목으로
                                        수수께끼를 쫓아 마을로 오게 된 ‘미즈키’
                                        한편 실종된 아내를 찾기 위해
                                        마을에 도착한 키타로의 아버지
                                        ‘토키사다’의 후계자 자리를 두고 소란스러운 가운데
                                        가문의 일족들이 하나둘씩 살해를 당하는데...
                                        <br><br>
                                        인간과 요괴, 두 남자의 운명적인 만남 속
                                        마을에 감춰진 무시무시한 진실이 밝혀진다!
 
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                 <span class="age-15">15</span><p class="title">키타로 탄생 게게게의 수수께끼</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.5%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.06.12 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li class="li-margin"> 
                        <div class="movie-image" >
                            <p class="rank">No.19</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail19">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88181/88181_320.jpg" alt="청춘18x2 너에게로 이어지는 길 포스터" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        “만일 그때 너에게 내 마음을 전했다면 지금의 난 달라졌을까?”<br>
                                        고등학생 ‘지미(허광한)’는,
                                        배낭여행 중 잠시 일자리를 찾아 온
                                        일본인 ‘아미(키요하라 카야)’를 만난다.
                                        그러나, 돌연 ‘아미’가 귀국을 하게 되고
                                        갑작스런 이별에 충격을 받은 ‘지미’에게
                                        ‘아미’는 서로의 꿈을 이룬 뒤
                                        다시 만나자는 약속을 하고 떠난다. <br><br>

                                        “나 지금, 너에게로 가고 있어”<br>
                                        시간이 지나 현재.
                                        타이페이에서의 성공한 삶에 지쳐 고향에 돌아온 ‘지미’는,
                                        예전에 ‘아미’로부터 받은 그림엽서를 발견한다.
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                 <span class="age-12">12</span><p class="title">청춘18x2 너에게로 이어지는...</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.3%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.22 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    <li>
                        <div class="movie-image" >
                            <p class="rank">No.20</p>   
                            <a href="${pageContext.request.contextPath}/detailpage/detail20">
                                <span class="image">
                                    <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000088/88234/88234_320.jpg" alt="내 손끝에 너의 온도가 닿을 때" onerror="errorImage(this)"/>
                                    <span class="textaa">
                                        드라마 <비의도적 연애담>의 '호태’와 ‘동희'의 풋풋한 학창 시절을 담은 스핀오프. <br>

                                        어려서부터 형제처럼 자라온 호태와 동희. 몇 년 전, 서울로 이사를 간 호태는 아버지가 돌아가신 뒤 엄마와 함께 강릉으로 돌아온다. 

                                        오랜만에 재회한 두 사람은 한 지붕 아래에서 함께 지내게 된다. 

                                        호태도 오랜만에 만난 동희에게 지금까지 경험해 보지 못했던 감정을 느끼게 된다. 두 사람의 아슬아슬한 관계는 예상치 못한 사건을 계기로 점점 변하기 시작하는데...
                                    </span>
                                </span>
                            </a>
                        </div>
                        
                        <div class="movie-info">
                            <a href=#>
                                 <span class="age-15">15</span><p class="title">내 손끝에 너의 온도가 닿을 때</p>
                            </a>
                            <div class="score">
                                <p class="percent">예매율  0.3%</p>
                            </div>
    
                            <span class="txt-info">
                                <p>
                                    2024.05.15 개봉
                                </p>
                            </span>
                            <a class="reservation" href="${pageContext.request.contextPath}/front/reservation">예매하기</a>
                        </div>
                    </li>
                    
                </ol>
                </div>
            </div>
        </main>
    </div>
    <div class="fixedBtn_wrap">
     
        <a href="${pageContext.request.contextPath}/front/reservation" class="btn_fixedTicketing">예매하기</a>
        
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
        <!-- footer_area (e) -->

        <div class="adFloat" style="display:block">

            <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Popicon" width="154" height="182" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" allowtransparency="true" id="ad_float1"></iframe>
        </div>
        <script type="text/javascript">            OpenAD();</script>
        <!-- //Float Ad -->
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
</body></html>