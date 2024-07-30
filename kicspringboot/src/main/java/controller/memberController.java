package controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.KicmemberMybatis;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.KicMember;

@Controller
@RequestMapping("/member/")
@CrossOrigin(origins = "http://localhost:3000",allowCredentials = "true")
public class memberController {

	HttpServletRequest request;
	
	@Autowired
	KicmemberMybatis mybatisdao = new KicmemberMybatis();
	
	@ModelAttribute
	protected void service(HttpServletRequest request, Model m) throws ServletException, IOException {
		this.request = request;
	}
	
	@RequestMapping("loginPro")
	public ResponseEntity loginPro(String id, String pass,
			@CookieValue(value = "id", required = false)Cookie cookie, HttpServletResponse response
			) throws ServletException, IOException {
		
		if (cookie==null) {
	         cookie = new Cookie("id", "");
	         response.addCookie(cookie);
	    }
		KicMember mem = mybatisdao.getMember(id);
		if (mem != null) {
	         if (mem.getPass().equals(pass)) {
	            cookie.setValue(id);
	            cookie.setDomain("localhost");
	            cookie.setPath("/");
	            // 30초간 저장
	            cookie.setMaxAge(30); // 정하지 않으면 브라우져가 종료되면 삭제 됩니다
	            cookie.setSecure(true); // SSL 통신채널 연결 시에만 쿠키를 전송하도록 설정 단 localhost는 상관없음
	            response.addCookie(cookie);
	            return new ResponseEntity("{ \"message\":\"login_success\", \"token\":\"1\"}", HttpStatus.OK);

	         } else {
	            return new ResponseEntity("{ \"message\": \"비밀번호가 틀립니다\", \"token\":\"0\"}", HttpStatus.UNAUTHORIZED);

	         }

	      } else {
	         return new ResponseEntity("{ \"message\": \"id 가 없습니다\", \"token\":\"0\"}", HttpStatus.UNAUTHORIZED);
	      }
	}
}
