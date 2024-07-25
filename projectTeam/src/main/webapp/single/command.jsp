<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<String>  li = new ArrayList();
li.add("원더랜드");
li.add("극장판 하이큐!! 쓰레기장의 결전");
li.add("퓨리오사-매드맥스 사가");
li.add("명탐정 코난 VS 괴도 키드");
li.add("나쁜 녀석들: 라이드 오어 다이");
li.add("설계자");
li.add("드라이브 ");
li.add("존 오브 인터레스트");
li.add("바커스-슈퍼스타가 될 거야");
li.add("그녀가 죽었다");
li.add("범죄도시4");
li.add("소울메이트");
li.add("분노의 강");
li.add("결속밴드 라이브 -항성-");
li.add("창가의 토토");
li.add("가필드 더 무비");
li.add("드림 시나리오");
li.add("키타로 탄생 게게게의 수수께끼");
li.add("청춘18x2 너에게로 이어지는 길");
li.add("내 손끝에 너의 온도가 닿을 때");



String keyword = request.getParameter("keyword");

String send="";
for(String str : li){
	if(str.contains(keyword)){
		if(str=="원더랜드")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail01'>"+str+"</a></p>";
		else if(str=="극장판 하이큐!! 쓰레기장의 결전")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail02'>"+str+"</a></p>";
		else if(str=="퓨리오사-매드맥스 사가")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail03'>"+str+"</a></p>";
		else if(str=="명탐정 코난 VS 괴도 키드")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail04'>"+str+"</a></p>";
		else if(str=="나쁜 녀석들: 라이드 오어 다이")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail05'>"+str+"</a></p>";
		else if(str=="설계자")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail06'>"+str+"</a></p>";
		else if(str=="드라이브")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail07'>"+str+"</a></p>";
		else if(str=="존 오브 인터레스트")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail08'>"+str+"</a></p>";
		else if(str=="바커스-슈퍼스타가 될 거야")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail09'>"+str+"</a></p>";
		else if(str=="그녀가 죽었다")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail10'>"+str+"</a></p>";
		else if(str=="범죄도시4")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail11'>"+str+"</a></p>";
		else if(str=="소울메이트")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail12'>"+str+"</a></p>";
		else if(str=="분노의 강")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail13'>"+str+"</a></p>";
		else if(str=="결속밴드 라이브 -항성-")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail14'>"+str+"</a></p>";
		else if(str=="창가의 토토")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail15'>"+str+"</a></p>";
		else if(str=="가필드 더 무비")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail16'>"+str+"</a></p>";
		else if(str=="드림 시나리오")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail17'>"+str+"</a></p>";
		else if(str=="키타로 탄생 게게게의 수수께끼")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail18'>"+str+"</a></p>";
		else if(str=="청춘18x2 너에게로 이어지는 길")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail19'>"+str+"</a></p>";
		else if(str=="내 손끝에 너의 온도가 닿을 때")
			send+="<p><a href='http://localhost:8080/projectTeam/detailpage/detail20'>"+str+"</a></p>";
			
	}
}
%><%=send %>
</body>
</html>