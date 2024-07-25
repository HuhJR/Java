package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MemberMybatis;

import model.Projectmember;
import model.Reservation;

@Controller
@RequestMapping("/front/")
public class FrontController {
	HttpSession session;
	Model m;
	HttpServletRequest request;

	@Autowired
	MemberMybatis mybatisdao;

	@ModelAttribute
	protected void service(HttpServletRequest request, Model m) throws ServletException, IOException {
		session = request.getSession();
		this.request = request;
		this.m = m;
	}

	@RequestMapping("index")
	public String index() throws ServletException, IOException {
		return "front/index";
	}

	@RequestMapping("main")
	public String main() throws ServletException, IOException {
		return "front/main";
	}

	@RequestMapping("movie")
	public String movie() throws ServletException, IOException {
		return "front/movie";
	}

	@RequestMapping("mypage")
	public String mypage(Reservation mem) throws ServletException, IOException {
	   String id = (String) session.getAttribute("id");
	   mem = mybatisdao.getReservation(id);
	   request.setAttribute("mem", mem);
	   request.setAttribute("nav", "reservInfo");
	   return "front/mypage";
	}

	@RequestMapping("theater")
	public String theater() throws ServletException, IOException {
		return "front/theater";
	}

	@RequestMapping("theaterPro")
	public String handleReservation() throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String location = request.getParameter("location");
		String theater = request.getParameter("theater");
		String date2 = request.getParameter("date2");
		String movie = request.getParameter("movie");
		String time = request.getParameter("time");
		System.out.println(time + date2);
		String msg;
		String url = "seat";
		int num = mybatisdao.makeReservation(id, location, theater, date2, movie, time);
		if (num > 0) {
			msg = "예약이 성공적으로 완료되었습니다.";
		} else {
			msg = "예약에 실패했습니다. 다시 시도해주세요.";
			url = "reservationForm";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}

	@RequestMapping("reservationPro")
	public String reservationPro(Reservation mov) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String location = request.getParameter("location");
		String theater = request.getParameter("theater");
		String date2 = request.getParameter("date2");
		String movie = request.getParameter("movie");
		String time = request.getParameter("time");

		System.out.println(mov);
		int num = mybatisdao.makeReservation(id, location, theater, date2, movie, time);

		String msg = "";
		String url = "";

		if (num > 0) {
			msg = "선택되었습니다.";
			url = "seat";
		} else {
			msg = "선택되지 않았습니다.";
			url = "theater";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}

	@RequestMapping("reservation")
	public String reservation() throws ServletException, IOException {
		return "front/reservation";
	}

	@RequestMapping("snack")
	public String snack() throws ServletException, IOException {
		return "front/snack";
	}

	@RequestMapping("signup")
	public String signup() throws ServletException, IOException {
		request.setAttribute("nav", "signup");
		return "front/signup";
	}

	@RequestMapping("logout")
	public String logout() throws ServletException, IOException {
		session.invalidate();
		request.setAttribute("msg", "로그아웃 되었습니다");
		request.setAttribute("url", "main");
		return "alert";

	}

	@RequestMapping("signupPro")
	public String signupPro(Projectmember kic) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println(kic);
		int num = mybatisdao.insertMember(kic);

		String msg = "";
		String url = "";

		if (num > 0) {
			msg = kic.getName() + "님의 회원가입이 완료 되었습니다.";
			url = "login";
		} else {
			msg = "회원가입이 실패하였습니다.";
			url = "signup";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}

	@RequestMapping("login")
	public String login() throws ServletException, IOException {
		request.setAttribute("nav", "login");
		return "front/login";
	}

	@RequestMapping("loginPro")
	public String loginPro(Projectmember mem) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		// Connection 객체
		String msg = id + "님이 로그인 하셨습니다.";
		String url = "main";

		mem = mybatisdao.getMember(id);

		if (mem != null) {
			if (pass.equals(mem.getPass())) {
				session.setAttribute("id", id);
			} else {
				msg = "비밀번호가 맞지 않습니다";
				url = "login";
			}
		} else {
			msg = "id를 확인 하세요";
			url = "login";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}

	@RequestMapping("updateform")
	public String updateform(Projectmember mem) throws ServletException, IOException {
		String id = (String) session.getAttribute("id");
		mem = mybatisdao.getMember(id);
		request.setAttribute("mem", mem);
		return "front/updateform";
	}

	@RequestMapping("memberUpdatePro")
	public String memberUpdatePro(Projectmember kic) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = (String) session.getAttribute("id");

		String chgpass = request.getParameter("chgpass");
		String pass1 = request.getParameter("pass1");
		Projectmember mem = mybatisdao.getMember(id);
		kic.setId(id);

		String msg = "";
		String url = "updateForm";

		if (mem != null) {
			if (pass1.isEmpty()) {
				msg = "수정 하였습니다.";
				mybatisdao.updateMember(kic);
				url = "mypage";
			} else {

				msg = "수정 하였습니다.";
				mybatisdao.chgPassMember(kic, chgpass);
				url = "mypage";
			}
		} else {
			msg = "수정 할 수 없습니다.";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";

	}

	@RequestMapping("deleteform")
	public String deleteform() throws ServletException, IOException {
		return "front/deleteform";
	}

	@RequestMapping("memberDeletePro")
	public String memberDeletePro(Projectmember kic) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = (String) session.getAttribute("id");
		Projectmember mem = mybatisdao.getMember(id);
		String msg = "";
		String url = "deleteform";

		if (mem != null) {
			if (mem.getPass().equals(kic.getPass())) {
				msg = "탈퇴 하였습니다.";
				session.invalidate();
				mybatisdao.deleteMember(id);
				url = "login";
			} else {
				msg = "비밀번호가 틀렸습니다.";
			}

		} else {
			msg = "탈퇴 할 수 없습니다.";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";

	}

	@RequestMapping("addseats")
	public String addseats(Reservation kic) throws ServletException, IOException {
		String id = (String) session.getAttribute("id");
		String seatsname = request.getParameter("seatsname");
		String totalperson = request.getParameter("totalperson");
		String timeid = request.getParameter("timeid");
		List<String> seatsnameList = Arrays.asList(seatsname.split(","));
		Reservation mem = mybatisdao.getReserv(id);
		
		System.out.println("timeid: " + timeid);
		System.out.println("Seatsname: " + seatsnameList);
		System.out.println("Total Person: " + totalperson);
		
		String msg = "";
		String url = "seat";
		if (mem != null) {
			msg = "예매하였습니다.";
			mybatisdao.updateReservation(seatsname, totalperson, id);
			mybatisdao.occupied(seatsnameList, timeid);
			url = "completed";
			System.out.println(kic);
		} else {
			msg = "예매 하지 못했습니다.";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}

	@RequestMapping("cancelreservation")
	public String cancelreservation(Reservation mem) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = (String) session.getAttribute("id");
		mem = mybatisdao.getReserv(id);
		String msg = "";
		String url = "main";

		if (mem != null) {
			msg = "예매 취소하였습니다.";
			mybatisdao.cancelReservation(id);
		} else {
			msg = "영화를 선택해 주세요";
			url = "reservation";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";

	}

	@RequestMapping("seat")
	public String seat(Reservation mem) throws ServletException, IOException {
		String id = (String) session.getAttribute("id");
		mem = mybatisdao.getReservation(id);
		String timeid = mem.getTimeid();
		List<String> li = mybatisdao.getOccupied(timeid);
		System.out.println(li);
		System.out.println(timeid);
		request.setAttribute("mem", mem);
		request.setAttribute("li", li);
		request.setAttribute("nav", "reservInfo");
		return "front/seat";
	}

	@RequestMapping("completed")
	public String completed(Reservation mem) throws ServletException, IOException {
		String id = (String) session.getAttribute("id");
		mem = mybatisdao.getReservation(id);
		request.setAttribute("mem", mem);
		request.setAttribute("nav", "reservInfo");
		return "front/completed";
	}

	@RequestMapping("command")
	public String command() throws ServletException, IOException {
		return "../single/command";
	}

}
