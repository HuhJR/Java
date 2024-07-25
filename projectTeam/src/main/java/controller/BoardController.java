package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import dao.BoardMybatis;
import model.Projectborder;

@Controller
@RequestMapping("/board/")
public class BoardController{
	HttpSession session;
	Model m;
	HttpServletRequest request;
	
	@Autowired
	BoardMybatis mybatisdao;

	@ModelAttribute
	protected void service(HttpServletRequest request, Model m) throws ServletException, IOException {
		session = request.getSession();
		this.request = request;
		this.m = m;
	}

	@RequestMapping("board")
	public String board() throws ServletException, IOException {
		return "board/board";
	}

	@RequestMapping("boardInfo")
	public String boardInfo(int boardnum)throws ServletException, IOException {

		Projectborder board = mybatisdao.getBoard(boardnum);
		
		
		request.setAttribute("board", board);

		
		
		return "board/boardInfo";
	}

	@RequestMapping("boardUpdateForm")
	public String boardUpdateForm(int boardnum) throws ServletException, IOException {

		Projectborder board = mybatisdao.getBoard(boardnum);
		request.setAttribute("board", board);

		return "board/boardUpdateForm";
	}

	@RequestMapping("boardUpdatePro")
	public String boardUpdatePro(@RequestParam("file2") MultipartFile multipartFile, 
			Projectborder board) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println("update");
		String path = request.getServletContext().getRealPath("/") + "img/board/";

		Projectborder boarddb = mybatisdao.getBoard(board.getBoardnum());
		String filename="";
		
		if(!multipartFile.isEmpty()) {
			File file = new File(path, multipartFile.getOriginalFilename());
			filename = multipartFile.getOriginalFilename();
			multipartFile.transferTo(file);	
			board.setFile1(filename);
		}else {
			board.setFile1(boarddb.getFile1());
		}

		String msg = "수정 되지 않았습니다.";
		String url = "boardUpdateForm?boardnum=" + board.getBoardnum();
		System.out.println(boarddb);
		if (boarddb != null) {
			int count = mybatisdao.boardUpdate(board);
		
			if (count == 1) {
				msg = "수정 되었습니다.";
				url = "boardInfo?boardnum=" + board.getBoardnum();
			}
		} else {
			msg = "게시물이 없습니다.";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		System.out.println(msg + ":" + url);
		return "alert";
	}

	@RequestMapping("boardDeleteForm")
	public String boardDeleteForm() throws ServletException, IOException {
		request.setAttribute("boardnum", request.getParameter("boardnum"));
		request.setAttribute("boardid", request.getParameter("boardid"));
		return "board/boardDeleteForm";
	}

	@RequestMapping("boardDeletePro")
	public String boardDeletePro(int boardnum) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");


		Projectborder boarddb = mybatisdao.getBoard(boardnum);

		
		
		String msg = "삭제되지 않았습니다.";
		String url = "boardDeleteForm?boardnum=" + boardnum;
		System.out.println(boarddb);
		if (boarddb != null) {
			int count = mybatisdao.boardDelete(boardnum);
			if (count == 1) {
				msg = "삭제 되었습니다.";
				url = "boardlist";
			}
		} else {
			msg = "게시물이 없습니다.";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "alert";
	}

	@RequestMapping("boardlist")
	public String boardlist() throws ServletException, IOException {
		String id = (String) session.getAttribute("id");

		List<Projectborder> li = mybatisdao.boardList(id);

		SimpleDateFormat formatter = new SimpleDateFormat("yy/MM/dd HH:mm");
		for (Projectborder m : li) {
			String formattedDate = formatter.format(m.getRegdate());
			m.setFormattedRegdate(formattedDate);
		}

		request.setAttribute("li", li);
		return "board/boardlist";
	}

	@RequestMapping("boardlistAll")
	public String boardlistAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Projectborder> li = mybatisdao.boardListAll();
		System.out.println(li);
		request.setAttribute("li", li);
		return "board/boardlistAll";
	}

	@RequestMapping("writing")
	public String writing() throws ServletException, IOException {
		return "board/writing";
	}

	@RequestMapping("writingPro")
	public String writingPro(@RequestParam("file2") MultipartFile multipartFile, 
			Projectborder board) throws ServletException, IOException {
		board.setId((String)session.getAttribute("id"));
		System.out.println(board);

		int num = mybatisdao.insertBoard(board);

		String msg = "게시물 등록 성공";
		String url = "boardlist";

		if (num == 0) {
			msg = "게시물 등록 실패";
		}

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "alert";
	}
	
	@RequestMapping("CommentPro")
	public String commentPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String replycomment = request.getParameter("replycomment");
	    System.out.println(replycomment + "------ replycomment");
	    int boardnum = Integer.parseInt(request.getParameter("boardnum"));
	    String id = (String) session.getAttribute("id");
	    
	    System.out.println(replycomment + ":" + boardnum + "," + id);
	    
	    if (!"admin".equals(id)) {
	        request.setAttribute("errorMessage", "댓글은 관리자만 작성할 수 있습니다.");
	        return "/single/commentErrorPage"; 
	    }
	    
	    mybatisdao.Comment(replycomment, boardnum, id);
	    request.setAttribute("comment", replycomment);
	 
	    return "/single/commentPro";   
	}
}
