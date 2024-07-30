package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import com.example.demo.jpa.MemberJpa;
import com.example.demo.model.KicMember;

@Controller
@RequestMapping("/member/")
public class MemberController  {
    
	
	Model m;
	HttpSession session;
	HttpServletRequest request;
	
	
	@Autowired
	MemberJpa memberjpa;
	
	@ModelAttribute
	protected void service(HttpServletRequest request, Model m) throws ServletException, 
	IOException {
		session=request.getSession();
		this.request=request;
		this.m=m;
		
	}
	
	
	@RequestMapping("index")
	public String index() throws ServletException, IOException {
		return "index";
	}
	@RequestMapping("join") 
	public String join() throws ServletException, IOException {
		request.setAttribute("nav", "join");
		return "member/join";
	}
	
	
	@RequestMapping("joinPro")
	public String joinPro(KicMember kic) throws ServletException, IOException {
		System.out.println(kic);//3
		
		KicMember savemember = memberjpa.save(kic);

		String msg="";
		String url="";

		if (savemember != null) {
			msg=kic.getName()+"님의 회원가입이 완료 되었습니다";
			url="login";
		} else {
			msg="회원가입이 실패 하였습니다";
			url="join";
		}
	
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		  return "alert";
	}
	
	
	@RequestMapping("joinInfo")
	public String joinInfo() throws ServletException, IOException {
	String id = (String)session.getAttribute("id");
	//KicMemberDAO dao=new KicMemberDAO();
	KicMember mem = memberjpa.findById(id).get();
	request.setAttribute("mem", mem);
	request.setAttribute("nav", "joininfo");
		return "member/joinInfo";
	}
	
	
	@RequestMapping("login")
	public String login() throws ServletException, IOException {
		request.setAttribute("nav", "login");
		return "member/login";
	}
	
	
	@RequestMapping("logout")
	public String logout() throws ServletException, IOException {
		session.invalidate(); 
		request.setAttribute("msg", "로그아웃 되었습니다");
		request.setAttribute("url", "index");
		return "alert";
		
	}
	
	@RequestMapping("loginPro")
	public String loginPro(String id, String pass) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//String id = request.getParameter("id");
		//String pass = request.getParameter("pass");
		//Connection 객체 
		//KicMemberDAO  dao = new KicMemberDAO();
		String msg=id +"님이 로그인 하셨습니다";
		String url="index";
		   KicMember mem = memberjpa.findById(id).get();
		  if (mem!=null) {
			if (pass.equals(mem.getPass())) {
				session.setAttribute("id", id);
			} else {
				msg="비밀번호가 맞지 않습니다";
				url="login";	}
		} else {
			msg="id를 확인 하세요";	url="login";}
		  m.addAttribute("msg", msg);
		  m.addAttribute("url", url);
		  return "alert";
	}
	
	@RequestMapping("memberUpdateForm")
	public String memberUpdateForm() throws ServletException, IOException {
	
		String id = (String)session.getAttribute("id");
		
		KicMember mem = memberjpa.findById(id).get();
		request.setAttribute("mem", mem);
		request.setAttribute("nav", "info");
		return "member/memberUpdateForm";
	}
	

	@RequestMapping("memberUpdatePro")
	public String memberUpdatePro(KicMember kic) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	
		String id = (String) session.getAttribute("id");
		
	
		KicMember memdb = memberjpa.findById(id).get();
		
		kic.setId(id);
		
		String msg = "";
		String url = "memberUpdateForm";

		if (memdb!=null){
			if (memdb.getPass().equals(kic.getPass())) {
				msg="수정 하였습니다";
				memberjpa.save(kic);
				url="joinInfo";
			} else {
				msg="비밀번호가 틀렸습니다";
			}
			
			
		} else {
			msg="수정 할 수 없습니다";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		  return "alert";
	}
	
	
	@RequestMapping("memberDeleteForm")
	public String memberDeleteForm() throws ServletException, IOException {

		return "member/memberDeleteForm";
	}
	
	
	@RequestMapping("memberDeletePro")
	public String memberDeletePro(String pass) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	
		String id = (String) session.getAttribute("id");
		//String pass = request.getParameter("pass");
	
		KicMember memdb = memberjpa.findById(id).get();

		String msg = "";
		String url = "memberDeleteForm";

		if (memdb!=null){
			if (memdb.getPass().equals(pass)) {
				msg="탈퇴 하였습니다";
				session.invalidate();
				memberjpa.delete(memdb);   
				url="login";
			} else {
				msg="비밀번호가 틀렸습니다";
			}
			
			
		} else {
			msg="탈퇴 할 수 없습니다";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		  return "alert";
	}
	
	
	
	@RequestMapping("memberPassForm")
	public String memberPassForm() throws ServletException, IOException {

		return "member/memberPassForm";
	}
	
	
	@RequestMapping("pictureimgForm")
	public String pictureimgForm() throws ServletException, IOException {
		
		return "../single/pictureimgForm";
	}
	
	@RequestMapping("picturePro")
	public String picturePro(@RequestParam("picture") MultipartFile multipartFile) throws ServletException, IOException {
		 String path = 	request.getServletContext().getRealPath("/")
				 +"/img/member/picture/";
	        System.out.println(path);
	        String filename="";
			if (!multipartFile.isEmpty()) {
				File file = new File(path, multipartFile.getOriginalFilename());
				filename=multipartFile.getOriginalFilename();
				multipartFile.transferTo(file);	
			
			}
	      
	        
	        System.out.println(filename);
	        request.setAttribute("filename", filename);
		return "../single/picturePro";
	}

	
	
	
	@RequestMapping("memberPassPro")
	public String memberPassPro(String pass, String chgpass) throws ServletException, IOException {
		
		String id = (String) session.getAttribute("id");
		//String pass = request.getParameter("pass");
		//String chgpass = request.getParameter("chgpass");
	
		KicMember memdb = memberjpa.findById(id).get();

		String msg = "";
		String url = "memberPassForm";
		if (memdb!=null){
			if (memdb.getPass().equals(pass)) {
				msg="비밀번호를 수정 하였습니다";
				session.invalidate();
				memdb.setPass(chgpass);
				memberjpa.save(memdb);   
				url="login";
			} else {		msg="비밀번호가 틀렸습니다";	}
		} else {
			msg="비밀번호를 수정 할 수 없습니다";}
		m.addAttribute("msg", msg);
		m.addAttribute("url", url);
		  return "alert";
	}
	
	
	
	
	@RequestMapping("memberList")
	public String memberList() throws ServletException, IOException {
		
	
		List<KicMember> li = memberjpa.findAll();
		System.out.println(li);
		request.setAttribute("li", li);
		return "member/memberList";
	}
}
