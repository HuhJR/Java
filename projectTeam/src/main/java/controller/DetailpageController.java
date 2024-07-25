package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/detailpage/")
public class DetailpageController{
	HttpSession session;
	Model m;
	HttpServletRequest request;
	
	@ModelAttribute
	protected void service(HttpServletRequest request, Model m) throws ServletException, IOException {
		session = request.getSession();
		this.request = request;
		this.m = m;
	}
	
	@RequestMapping("detail01")
	public String detail01() throws ServletException, IOException {
		return "detailpage/detail01";	
	}
	
	@RequestMapping("detail02")
	public String detail02() throws ServletException, IOException {
		return "detailpage/detail02";	
	}
	
	@RequestMapping("detail03")
	public String detail03() throws ServletException, IOException {
		return "detailpage/detail03";	
	}
	
	@RequestMapping("detail04")
	public String detail04() throws ServletException, IOException {
		return "detailpage/detail04";	
	}
	
	@RequestMapping("detail05")
	public String detail05() throws ServletException, IOException {
		return "detailpage/detail05";	
	}
	
	@RequestMapping("detail06")
	public String detail06() throws ServletException, IOException {
		return "detailpage/detail06";	
	}
	
	@RequestMapping("detail07")
	public String detail07() throws ServletException, IOException {
		return "detailpage/detail07";	
	}
	
	@RequestMapping("detail08")
	public String detail08() throws ServletException, IOException {
		return "detailpage/detail08";	
	}
	
	@RequestMapping("detail09")
	public String detail09() throws ServletException, IOException {
		return "detailpage/detail09";	
	}
	
	@RequestMapping("detail10")
	public String detail10() throws ServletException, IOException {
		return "detailpage/detail10";	
	}
	
	@RequestMapping("detail11")
	public String detail11() throws ServletException, IOException {
		return "detailpage/detail11";	
	}
	
	@RequestMapping("detail12")
	public String detail12() throws ServletException, IOException {
		return "detailpage/detail12";	
	}
	
	@RequestMapping("detail13")
	public String detail13() throws ServletException, IOException {
		return "detailpage/detail13";	
	}
	
	@RequestMapping("detail14")
	public String detail14() throws ServletException, IOException {
		return "detailpage/detail14";	
	}
	
	@RequestMapping("detail15")
	public String detail15() throws ServletException, IOException {
		return "detailpage/detail15";	
	}
	
	@RequestMapping("detail16")
	public String detail16() throws ServletException, IOException {
		return "detailpage/detail16";	
	}
	
	@RequestMapping("detail17")
	public String detail17() throws ServletException, IOException {
		return "detailpage/detail17";	
	}
	
	@RequestMapping("detail18")
	public String detail18() throws ServletException, IOException {
		return "detailpage/detail18";	
	}
	
	@RequestMapping("detail19")
	public String detail19() throws ServletException, IOException {
		return "detailpage/detail19";	
	}
	
	@RequestMapping("detail20")
	public String detail20() throws ServletException, IOException {
		return "detailpage/detail20";	
	}
}
