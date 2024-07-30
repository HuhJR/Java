-- 회원가입용
create table kicboard(
num int primary key,
name varchar(30),
pass varchar(20),
subject varchar(100),
content varchar(4000),
file1 varchar(100),
regdate date,
readcnt number(10),
boardid varchar(1)  --이미지 이름
);

create sequence kicboardseq;

--commit
create table boardcomment(
ser int primary key,
num int,
content varchar(2000),
regdate date
);

create sequence boardcomseq;


