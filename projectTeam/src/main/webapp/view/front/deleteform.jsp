<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Join</title>
<style>

    table {
        width: 280px;
        height: 300px;
        margin: auto;

        
    }
    .email {
        width: 127px;
        height: 32px;
        font-size: 15px;
        border: 0;
        border-color: lightgray;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: rgb(233,233,233);
    }
    .text {
        width: 250px;
        height: 32px;
        font-size: 15px;
        border: 0;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: rgb(233,233,233);
    }
    select {
        width: 100px;
        height: 32px;
        font-size: 15px;
        border: 1;
        border-color: lightgray;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
    }
    .btn {
        width: 262px;
        height: 32px;
        font-size: 15px;
        border: 0;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: #FB4357;
    }
    .btn:active {
        width: 262px;
        height: 32px;
        font-size: 15px;
        border: 0;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: #FB4357;
    }
    .div {
       display : flex;
       width: 127px;
        height: 32px;
        font-size: 15px;
        border: 0;
        border-color: lightgray;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
    }
    .birth {
       display : flex;
    }
</style>
<script>
function chkform(f){
   alert(f.pass.value==f.pass2.value)
   if(f.pass.value!=f.pass2.value){
      f.focus()
      return false
   }
   return true
}
</script>
</head>

<body>
<form class="validation-form" novalidate action="memberDeletePro" name="joinform"   
            method="post" onsubmit="return chkpass(this)">
    <table style="margin-top:120px;">
    <tr>
        <td><h2>회원탈퇴</h2></td>
    </tr>
    <tr><td>아이디</td></tr>
    <tr><td><input type="text" class="text" name="id"></td></tr>
    <tr><td>비밀번호</td></tr>
    <tr><td><input type="password" class="text" name="pass"></td></tr>
    <tr><td>비밀번호 확인</td></tr>
    <tr><td><input type="password" class="text" name="pass2"></td></tr>
    
    <tr><td><input type="submit" value="탈퇴하기" class="btn" style="background-color: #FB4357; color: white; "></td></tr>
    </table>
</form>
</body>
</html>
 