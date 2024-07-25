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
    <title id="ctl00_ctl00_headerTitle">MY CGV HOME &lt; My CGV | 영화 그 이상의 감동, CGV</title>
   <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209">
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css">
</head>
<style>
.table-container {
    margin: 20px;
    padding: 20px;
    background-color: #f2f2f2; /* Light gray background */
    border: 1px solid #ddd; /* Gray border */
    border-radius: 5px; /* Rounded corners */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow for depth */
    max-width: 800px; /* Adjust the maximum width as per your requirement */
    margin: auto; /* Center the container horizontally */
}

.styled-table {
    width: 100%;
    border-collapse: collapse; /* Collapse borders */
    background-color: #fff; /* White background for table */
}

.styled-table th, .styled-table td {
    padding: 8px; 
    text-align: left; 
    border-bottom: 1px solid #ddd;
}

.styled-table th {
    background-color: #f0f0f0; 
}

.styled-table tbody tr:nth-child(even) {
    background-color: #f9f9f9;
}
</style>
<body>
<div class="table-container">
    <div>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>번호</th>
                    <th>제목</th>
                    <th>내용</th>
                    <th>이미지파일</th>
                    <th>등록날짜</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="all" items="${li}">
                    <tr>
                        <td>${all.id}</td>
                        <td>${all.boardnum}</td>
                        <td><a href="boardInfo?boardnum=${all.boardnum }" >${all.subject}</a></td>
                        <td>${all.content}</td>
                        <td>${all.file1}</td>
                        <td>${all.regdate}</td>
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>