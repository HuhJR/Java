create table projectmember(
	id varchar(20) primary key,
	pass varchar(20),
	name varchar(20),
	birthyear varchar(20),
	birthmonth varchar(20),
	birthday varchar(20),
	email varchar(50),
	tel varchar(50),
	gender number(1),
	picture varchar(100),
	moviename varchar(20)
);

drop table projectmember;

CREATE TABLE projectborder (
    id VARCHAR2(20),
    boardnum NUMBER(10),
    subject VARCHAR2(1000),
    content VARCHAR2(2000),
    file1 VARCHAR2(100),
    regdate DATE,
    boardId varchar2(1),
    replycomment varchar2(2000)
);
   
CREATE TABLE projectbuy (
    id VARCHAR2(20) PRIMARY KEY,
    season VARCHAR2(20),
    moviename VARCHAR2(20),
    purchase_date DATE,
    theater VARCHAR2(30),
    time NUMBER,
    totalperson NUMBER,
    seat NUMBER,
    cinemaid VARCHAR2(20),
    cinemaseat NUMBER
);
create sequence projectborderseq; 

drop table projectborder;


CREATE TABLE reservation (
   reservationid varchar2(20) primary key,
    id VARCHAR2(20),
    locid varchar2(50),
   theaterid varchar2(50),
   date2id varchar2(50),
   movieid varchar2(50),
   timeid varchar2(50),
    totalperson varchar2(10),
    seatsname varchar2(80),
    FOREIGN KEY (id) REFERENCES projectmember(id),
    FOREIGN KEY (locid) REFERENCES location(locid),
    FOREIGN KEY (theaterid) REFERENCES theater(theaterid),
    FOREIGN KEY (date2id) REFERENCES date2(date2id),
    FOREIGN KEY (movieid) REFERENCES movie(movieid),
    FOREIGN KEY (timeid) REFERENCES time(timeid)
);
create sequence reservationseq;

create table location(
locid varchar2(10) primary key,
locname varchar2(30)
);
create table theater(
theaterid varchar2(10) primary key,
theatername varchar2(40),
locid varchar2(10),
FOREIGN KEY (locid) REFERENCES location(locid)
);
create table movie(
movieid varchar2(10) primary key,
moviename varchar2(80),
movieage varchar2(10)
);
create table date2(
date2id varchar2(10) primary key,
date2name varchar2(40)
);
create table time(
timeid varchar2(10) primary key,
timename varchar2(40)
);

create table seats(
seatsid varchar2(10) primary key,
seatsname varchar2(10),
timeid varchar2(10),
occupied NUMBER(1,0) DEFAULT 0,
FOREIGN KEY (timeid) REFERENCES time(timeid)
);

