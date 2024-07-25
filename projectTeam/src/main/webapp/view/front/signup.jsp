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
        height: 600px;
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
<form class="validation-form" novalidate action="signupPro" name="joinform"   
				method="post" onsubmit="return chkpass(this)">
    <table style="margin-top:120px;">
    <tr>
        <td><h2>회원가입</h2></td>
    </tr>
    <tr><td>아이디</td></tr>
    <tr><td><input type="text" class="text" name="id"></td></tr>
    <tr><td>비밀번호</td></tr>
    <tr><td><input type="password" class="text" name="pass"></td></tr>
    <tr><td>비밀번호 확인</td></tr>
    <tr><td><input type="password" class="text" name="pass2"></td></tr>
    <tr><td>이름</td></tr>
    <tr><td><input type="text" class="text" name="name"></td></tr>
    <tr><td>생년월일</td></tr>
    <tr>
    <tr><td>
       <div class="birth">
               <select class="birth" name= "birthyear">
                  <option>연도(4자리)</option>
                  <option>1950</option>
                  <option>1951</option>
                  <option>1952</option>
                  <option>1953</option>
                  <option>1954</option>
                  <option>1955</option>
                  <option>1956</option>
                  <option>1957</option>
                  <option>1958</option>
                  <option>1959</option>
                  <option>1960</option>
                  <option>1961</option>
                  <option>1962</option>
                  <option>1963</option>
                  <option>1964</option>
                  <option>1965</option>
                  <option>1966</option>
                  <option>1967</option>
                  <option>1968</option>
                  <option>1969</option>
                  <option>1970</option>
                  <option>1971</option>
                  <option>1972</option>
                  <option>1973</option>
                  <option>1974</option>
                  <option>1975</option>
                  <option>1976</option>
                  <option>1977</option>
                  <option>1978</option>
                  <option>1979</option>
                  <option>1980</option>
                  <option>1981</option>
                  <option>1982</option>
                  <option>1983</option>
                  <option>1984</option>
                  <option>1985</option>
                  <option>1986</option>
                  <option>1987</option>
                  <option>1988</option>
                  <option>1989</option>
                  <option>1990</option>
                  <option>1991</option>
                  <option>1992</option>
                  <option>1993</option>
                  <option>1994</option>
                  <option>1995</option>
                  <option>1996</option>
                  <option>1997</option>
                  <option>1998</option>
                  <option>1999</option>
                  <option>2000</option>
                  <option>2001</option>
                  <option>2002</option>
                  <option>2003</option>
                  <option>2004</option>
                  <option>2005</option>
                  <option>2006</option>
                  <option>2007</option>
                  <option>2008</option>
                  <option>2009</option>
                  <option>2010</option>
                  <option>2011</option>
                  <option>2012</option>
                  <option>2013</option>
                  <option>2014</option>
                  <option>2015</option>
                  <option>2016</option>
                  <option>2017</option>
                  <option>2018</option>
                  <option>2019</option>
               </select> 
               <select class="birth" name="birthmonth">
                  <option>월</option>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                  <option>11</option>
                  <option>12</option>
               </select> 
               <select class="birth" name="birthday">
                  <option>일</option>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                  <option>11</option>
                  <option>12</option>
                  <option>13</option>
                  <option>14</option>
                  <option>15</option>
                  <option>16</option>
                  <option>17</option>
                  <option>18</option>
                  <option>19</option>
                  <option>20</option>
                  <option>21</option>
                  <option>22</option>
                  <option>23</option>
                  <option>24</option>
                  <option>25</option>
                  <option>26</option>
                  <option>27</option>
                  <option>28</option>
                  <option>29</option>
                  <option>30</option>
                  <option>31</option>
               </select>
               </div> 
    </td></tr>
    <tr><td>이메일</td></tr>
    <tr>
        <td><input type="text" class="email" name="email"> 
            <select>
                <option>naver.com</option>
                <option>gmail.com</option>
                <option>daum.net</option>
                <option>nate.com</option>
            </select>
        </td>
    </tr>
    <tr><td>휴대전화</td></tr>
    <tr><td>
    <input class="text" type="tel" name="tel">
    </td></tr>
    <tr><td>성별</td></tr>
    <tr>
       <td>
       <label><input type="radio" name="gender"  value="1">남자</label>
       <label><input type="radio" name="gender"  value="2">여자</label>
       </td>
   </tr>
    <tr><td><input type="submit" value="가입하기" class="btn" onclick="alert('가입 성공!')" style="background-color: #FB4357; color: white; "></td></tr>
    </table>
</form>
</body>
</html>
 