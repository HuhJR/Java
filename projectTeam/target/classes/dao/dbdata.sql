INSERT ALL
INTO location VALUES ('1', '서울')
INTO location VALUES ('2', '경기/인천')
INTO location VALUES ('3', '충청/대전')
INTO location VALUES ('4', '전라/광주')
INTO location VALUES ('5', '경상')
INTO location VALUES ('6', '강원')
INTO location VALUES ('7', '제주')
SELECT * FROM dual;

--theater
INSERT ALL
INTO theater VALUES ('1', '강남', '1')
INTO theater VALUES ('2', '강변', '1')
INTO theater VALUES ('3', '건대입구', '1')
INTO theater VALUES ('4', '구로', '1')
INTO theater VALUES ('5', '대학로', '1')
INTO theater VALUES ('6', '동대문', '1')
INTO theater VALUES ('7', '경기광주', '2')
INTO theater VALUES ('8', '배곧', '2')
INTO theater VALUES ('9', '야탑', '2')
INTO theater VALUES ('10', '화정', '2')
INTO theater VALUES ('11', '평택', '2')
INTO theater VALUES ('12', '서현', '2')
INTO theater VALUES ('13', '논산', '3')
INTO theater VALUES ('14', '당진', '3')
INTO theater VALUES ('15', '대전', '3')
INTO theater VALUES ('16', '천안', '3')
INTO theater VALUES ('17', '아산', '3')
INTO theater VALUES ('18', '세종', '3')
INTO theater VALUES ('19', '광양', '4')
INTO theater VALUES ('20', '광주상무', '4')
INTO theater VALUES ('21', '순천', '4')
INTO theater VALUES ('22', '익산', '4')
INTO theater VALUES ('23', '나주', '4')
INTO theater VALUES ('24', '정읍', '4')
INTO theater VALUES ('25', '거제', '5')
INTO theater VALUES ('26', '김천', '5')
INTO theater VALUES ('27', '마산', '5')
INTO theater VALUES ('28', '북포항', '5')
INTO theater VALUES ('29', '안동', '5')
INTO theater VALUES ('30', '통영', '5')
INTO theater VALUES ('31', '강릉', '6')
INTO theater VALUES ('32', '기린', '6')
INTO theater VALUES ('33', '원통', '6')
INTO theater VALUES ('34', '인제', '6')
INTO theater VALUES ('35', '춘천', '6')
INTO theater VALUES ('36', '속초', '6')
INTO theater VALUES ('37', '애월', '7')
INTO theater VALUES ('38', '제주공항', '7')
INTO theater VALUES ('39', '서귀포', '7')
select * from dual;

--movie

INSERT ALL
INTO movie VALUES ('1', '원더랜드', '12')
INTO movie VALUES ('2', '극장판 하이큐!! 쓰레기장의 결전', 'all')
INTO movie VALUES ('3', '퓨리오사-매드맥스 사가', '15')
INTO movie VALUES ('4', '명탐정 코난 VS 괴도 키드', '12')
INTO movie VALUES ('5', '나쁜 녀석들: 라이드 오어 다이', '15')
INTO movie VALUES ('6', '설계자', '15')
INTO movie VALUES ('7', '드라이브', '15')
INTO movie VALUES ('8', '존 오브 인터레스트', '12')
INTO movie VALUES ('9', '바커스-슈퍼스타가 될 거야', 'all')
INTO movie VALUES ('10', '그녀가 죽었다', '15')
INTO movie VALUES ('11', '범죄도시4', '15')
INTO movie VALUES ('12', '소울메이트', '12')
INTO movie VALUES ('13', '분노의 강', '12')
INTO movie VALUES ('14', '결속밴드 라이브 -항성-', 'all')
INTO movie VALUES ('15', '창가의 토토', 'all')
INTO movie VALUES ('16', '가필드 더 무비', 'all')
INTO movie VALUES ('17', '드림 시나리오', '15')
INTO movie VALUES ('18', '키타로 탄생 게게게의 수수께끼', '15')
INTO movie VALUES ('19', '청춘18x2 너에게로 이어지는 길', '12')
INTO movie VALUES ('20', '내 손끝에 너의 온도가 닿을 때', '15')
SELECT * FROM dual;

--date2

INSERT ALL
INTO date2 VALUES ('1', '2024-06-19')
INTO date2 VALUES ('2', '2024-06-20')
INTO date2 VALUES ('3', '2024-06-21')
INTO date2 VALUES ('4', '2024-06-22')
INTO date2 VALUES ('5', '2024-06-23')
INTO date2 VALUES ('6', '2024-06-24')
INTO date2 VALUES ('7', '2024-06-25')
INTO date2 VALUES ('8', '2024-06-26')
INTO date2 VALUES ('9', '2024-06-27')
INTO date2 VALUES ('10', '2024-06-28')
SELECT * FROM dual;

--time

INSERT ALL
INTO time VALUES ('1', '14:50')
INTO time VALUES ('2', '15:50')
INTO time VALUES ('3', '17:15')
INTO time VALUES ('4', '18:15')
INTO time VALUES ('5', '20:40')
INTO time VALUES ('6', '22:35')
SELECT * FROM dual;

--seats

INSERT INTO seats (seatsid, seatsname, timeid)
SELECT '1_' || LEVEL,
       CASE
           WHEN LEVEL <= 9 THEN 'A' || LEVEL
           WHEN LEVEL <= 18 THEN 'B' || (LEVEL - 9)
           WHEN LEVEL <= 27 THEN 'C' || (LEVEL - 18)
           WHEN LEVEL <= 36 THEN 'D' || (LEVEL - 27)
           WHEN LEVEL <= 45 THEN 'E' || (LEVEL - 36)
           WHEN LEVEL <= 54 THEN 'F' || (LEVEL - 45)
           WHEN LEVEL <= 63 THEN 'G' || (LEVEL - 54)
           WHEN LEVEL <= 72 THEN 'H' || (LEVEL - 63)
           WHEN LEVEL <= 81 THEN 'I' || (LEVEL - 72)
       END AS seatsname,
       1 AS timeid
FROM dual
CONNECT BY LEVEL <= 81;
INSERT INTO seats (seatsid, seatsname, timeid)
SELECT '2_' || LEVEL,
       CASE
           WHEN LEVEL <= 9 THEN 'A' || LEVEL
           WHEN LEVEL <= 18 THEN 'B' || (LEVEL - 9)
           WHEN LEVEL <= 27 THEN 'C' || (LEVEL - 18)
           WHEN LEVEL <= 36 THEN 'D' || (LEVEL - 27)
           WHEN LEVEL <= 45 THEN 'E' || (LEVEL - 36)
           WHEN LEVEL <= 54 THEN 'F' || (LEVEL - 45)
           WHEN LEVEL <= 63 THEN 'G' || (LEVEL - 54)
           WHEN LEVEL <= 72 THEN 'H' || (LEVEL - 63)
           WHEN LEVEL <= 81 THEN 'I' || (LEVEL - 72)
       END AS seatsname,
       2 AS timeid
FROM dual
CONNECT BY LEVEL <= 81;
INSERT INTO seats (seatsid, seatsname, timeid)
SELECT '3_' || LEVEL,
       CASE
           WHEN LEVEL <= 9 THEN 'A' || LEVEL
           WHEN LEVEL <= 18 THEN 'B' || (LEVEL - 9)
           WHEN LEVEL <= 27 THEN 'C' || (LEVEL - 18)
           WHEN LEVEL <= 36 THEN 'D' || (LEVEL - 27)
           WHEN LEVEL <= 45 THEN 'E' || (LEVEL - 36)
           WHEN LEVEL <= 54 THEN 'F' || (LEVEL - 45)
           WHEN LEVEL <= 63 THEN 'G' || (LEVEL - 54)
           WHEN LEVEL <= 72 THEN 'H' || (LEVEL - 63)
           WHEN LEVEL <= 81 THEN 'I' || (LEVEL - 72)
       END AS seatsname,
       3 AS timeid
FROM dual
CONNECT BY LEVEL <= 81;
INSERT INTO seats (seatsid, seatsname, timeid)
SELECT '4_' || LEVEL,
       CASE
           WHEN LEVEL <= 9 THEN 'A' || LEVEL
           WHEN LEVEL <= 18 THEN 'B' || (LEVEL - 9)
           WHEN LEVEL <= 27 THEN 'C' || (LEVEL - 18)
           WHEN LEVEL <= 36 THEN 'D' || (LEVEL - 27)
           WHEN LEVEL <= 45 THEN 'E' || (LEVEL - 36)
           WHEN LEVEL <= 54 THEN 'F' || (LEVEL - 45)
           WHEN LEVEL <= 63 THEN 'G' || (LEVEL - 54)
           WHEN LEVEL <= 72 THEN 'H' || (LEVEL - 63)
           WHEN LEVEL <= 81 THEN 'I' || (LEVEL - 72)
       END AS seatsname,
       4 AS timeid
FROM dual
CONNECT BY LEVEL <= 81;
INSERT INTO seats (seatsid, seatsname, timeid)
SELECT '5_' || LEVEL,
       CASE
           WHEN LEVEL <= 9 THEN 'A' || LEVEL
           WHEN LEVEL <= 18 THEN 'B' || (LEVEL - 9)
           WHEN LEVEL <= 27 THEN 'C' || (LEVEL - 18)
           WHEN LEVEL <= 36 THEN 'D' || (LEVEL - 27)
           WHEN LEVEL <= 45 THEN 'E' || (LEVEL - 36)
           WHEN LEVEL <= 54 THEN 'F' || (LEVEL - 45)
           WHEN LEVEL <= 63 THEN 'G' || (LEVEL - 54)
           WHEN LEVEL <= 72 THEN 'H' || (LEVEL - 63)
           WHEN LEVEL <= 81 THEN 'I' || (LEVEL - 72)
       END AS seatsname,
       5 AS timeid
FROM dual
CONNECT BY LEVEL <= 81;
INSERT INTO seats (seatsid, seatsname, timeid)
SELECT '6_' || LEVEL,
       CASE
           WHEN LEVEL <= 9 THEN 'A' || LEVEL
           WHEN LEVEL <= 18 THEN 'B' || (LEVEL - 9)
           WHEN LEVEL <= 27 THEN 'C' || (LEVEL - 18)
           WHEN LEVEL <= 36 THEN 'D' || (LEVEL - 27)
           WHEN LEVEL <= 45 THEN 'E' || (LEVEL - 36)
           WHEN LEVEL <= 54 THEN 'F' || (LEVEL - 45)
           WHEN LEVEL <= 63 THEN 'G' || (LEVEL - 54)
           WHEN LEVEL <= 72 THEN 'H' || (LEVEL - 63)
           WHEN LEVEL <= 81 THEN 'I' || (LEVEL - 72)
       END AS seatsname,
       6 AS timeid
FROM dual
CONNECT BY LEVEL <= 81;