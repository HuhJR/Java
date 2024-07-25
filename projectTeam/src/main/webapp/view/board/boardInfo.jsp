<%@page import="model.Projectmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }
    h4 {
        color: #333;
        text-align: center;
        margin-top: 20px;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    img {
        max-width: 100%;
        height: auto;
    }
    .round {
        display: inline-block;
        padding: 10px 20px;
        margin: 5px;
        border-radius: 5px;
        text-decoration: none;
        color: #fff;
        background-color: #007bff;
        text-align: center;
        font-size: 1.1em;
    }
    .round.inred {
        background-color: #dc3545;
    }
    #comment, #reply {
        width: 80%;
        margin: 10px auto;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        margin-right: 10px;
    }
    .btn {
        display: inline-block;
        padding: 10px 20px;
        margin: 5px;
        border-radius: 5px;
        text-decoration: none;
        color: #fff;
        background-color: #DC3545;
        text-align: center;
        cursor: pointer;
    }
    .btn-primary {
        background-color: #DC3545;
    }
    #commentList {
        width: 80%;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    .but {
        text-align: center;
        line-height: 100px;
       margin-right: 50px;
    }
    .table-left {
        width: 15%;
        text-align: center;
    }
    .table-right {
        width: 85%;
        text-align: center;
    }
    .reply-section {
        margin-left: 20px;
        background-color: #f9f9f9;
        padding: 10px;
        border-radius: 5px;
    }
    #commentSection{
       display:flex;
           margin-right: 20px;
    }
</style>
<script>
function enterkey(num) {
   if(window.event.keyCode ==13) {
      commentPro(num)
   }
}

function commentPro(num) {
   const comment = document.querySelector('#comment').value
   if (comment=='') {
      document.querySelector("#comment").focus()
      return
   }
   alert(num+":"+comment)
 //  const commentList = document.querySelector('#commentList')
   const url = "${pageContext.request.contextPath}/board/CommentPro"
   const param = '?replycomment='+comment+'&boardnum='+num
   alert(url+param)
   
   fetch(url+param)
   
 //  .then(res => res.text())
 //  .then(txt => {
 //     console.log(txt)
 //     alert("ok")
 //     commentList.innerHTML=txt + "<br>" + commentList.innerHTML  
   
 // })
  
}




</script>
</head>
<body>
<div>
   <div>
      <h4>${boardName } 게시판 정보</h4>
      <table>
      <tr><td class="table-left">작성자</td><td class="table-right">${board.id}</td></tr>
      <tr><td class="table-left">글제목</td><td class="table-right">${board.subject}</td></tr>
      <tr><td class="table-left">내용</td><td class="table-right">${board.content}</td></tr>
      <tr><td class="table-left">이미지</td><td class="table-right">
      <img src="${pageContext.request.contextPath}/img/board/${board.file1}">
      </td></tr>
      </table>
      <div class="but">
          <a href="${pageContext.request.contextPath}/board/boardUpdateForm" class="round inred" style="width:80px">글수정</a>
          <a href="${pageContext.request.contextPath}/board/boardDeleteForm" class="round inred" style="width:80px">글삭제</a>
          <a href="${pageContext.request.contextPath}/board/boardlist" class="round inred" style="width:80px">글목록</a>
      </div>
       <div id="commentSection">
    
            <textarea id="comment" placeholder="관리자만 작성할 수 있습니다." onkeypress="enterkey(${board.boardnum})" name="replycomment">${board.replycomment}</textarea>
    <c:choose>
        <c:when test="${id eq 'admin'}">
            <div class="but">
                <button type="button" class="btn-primary" onclick="commentPro(${board.boardnum})">댓글 작성</button>
            </div>
        </c:when>
        <c:otherwise>
            <div class="but">
                <button class="btn btn-primary" disabled>댓글 작성</button>
            </div>
        </c:otherwise>
    </c:choose>
  
   </div> 
   
   
   
   
   
   </div>
   
</div>
</body>
</html>
