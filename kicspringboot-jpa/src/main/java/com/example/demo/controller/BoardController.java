package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import com.example.demo.jpa.BoardJpa;
import com.example.demo.jpa.CommentJap;
import com.example.demo.model.Comment;
import com.example.demo.model.KicBoard;


@Controller
@RequestMapping("/board/")
public class BoardController  {
	
	HttpSession session;
	HttpServletRequest request;
	
	@Autowired
	BoardJpa boardjpa;
	@Autowired
	CommentJap commentjpa;
	
	@ModelAttribute
	protected void service(HttpServletRequest request) throws ServletException, IOException {
		this.request=request;
	session= request.getSession();	
	String nav=(String) session.getAttribute("boardid");
	String boardName=(String) session.getAttribute("boardName");
	request.setAttribute("nav", nav);
	request.setAttribute("boardName", boardName);
	

	}
	
	@RequestMapping("index")
	public String index() throws ServletException, IOException {

		return "index";
	}
	
	@RequestMapping("boardForm")
	public String boardForm() throws ServletException, IOException {
	
		return "board/boardForm";
	}
	
	
	@RequestMapping("boardInfo")
	public String boardInfo(int num) throws ServletException, IOException {
   	
		//int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		
		KicBoard board = boardjpa.findById(num).get();
		board.setReadcnt(board.getReadcnt()+1);
		boardjpa.save(board);
		
		List<Comment> li = commentjpa.findByNum(num);
		int count = li.size();
		
		
		request.setAttribute("board", board);
		request.setAttribute("li", li);
		request.setAttribute("count", count);
		
		return "board/boardInfo";
	}
	
	
	@RequestMapping("boardCommentPro")
	public String boardCommentPro(String comment, int boardnum) throws ServletException, IOException {
   	    //String comment = request.getParameter("comment");
   	    //int boardnum  = Integer.parseInt(request.getParameter("boardnum"));
		String id = (String) session.getAttribute("id");
		Comment c = new Comment();
				c.setContent(comment);
				c.setNum(boardnum);
				c.setId(id);
		commentjpa.save(c);
		
		//int count =commentjpa.findbyNum(boardnum).size();		
		request.setAttribute("comment", comment);
		request.setAttribute("count", 0);
		return "../single/boardCommentPro";
	}
	
	
	@RequestMapping("boardUpdateForm")
	public String boardUpdateForm(int num) throws ServletException, IOException {
        //http://localhost:8080/kicmodel2/board/boardInfo?num=10
		//int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
	
		KicBoard board = boardjpa.findById(num).get();
		
		request.setAttribute("board", board);
		return "board/boardUpdateForm";
	}
	
	
	@RequestMapping("boardUpdatePro")
	public String boardUpdatePro(@RequestParam("file2") MultipartFile multipartFile, KicBoard kicboard) throws ServletException, IOException {
      
		String path = 
				request.getServletContext().getRealPath("/")+"img/board/";
		KicBoard boarddb = boardjpa.findById(kicboard.getNum()).get();
		String filename="";
		if (!multipartFile.isEmpty()) {
			File file = new File(path, multipartFile.getOriginalFilename());
			filename=multipartFile.getOriginalFilename();
			multipartFile.transferTo(file);	
			kicboard.setFile1(filename);
		} else {
			kicboard.setFile1(boarddb.getFile1());
		}
		
		kicboard.setReadcnt(boarddb.getReadcnt());
		kicboard.setBoardid(boarddb.getBoardid());
		
		String msg = "수정 되지 않았습니다";
		String url = "boardUpdateForm?num="+kicboard.getNum();
		System.out.println(boarddb);
		if (boarddb!=null) {		
		  if (kicboard.getPass().equals(boarddb.getPass())) {
			  KicBoard savebpard = boardjpa.save(kicboard);
			  if (savebpard != null) {
					msg="수정 되었습니다";
					url="boardInfo?num="+kicboard.getNum();
				} 
		  } else {	  msg = "비밀번호 확인 하세요";   }
		}  else {
			 msg = "게시물이 없습니다"; 
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		  return "alert";		
	}

	
	
	@RequestMapping("boardPro")
	public String boardPro(@RequestParam("file2") MultipartFile multipartFile, KicBoard kicboard) throws ServletException, IOException {
		String path = 
				request.getServletContext().getRealPath("/")+"img/board/";
		String filename="";
		if (!multipartFile.isEmpty()) {
			File file = new File(path, multipartFile.getOriginalFilename());
			filename=multipartFile.getOriginalFilename();
			multipartFile.transferTo(file);		
		}
		String boardid  = (String) session.getAttribute("boardid");
		kicboard.setBoardid(boardid);
		kicboard.setFile1(filename);
		System.out.println(kicboard);
	
		KicBoard boarddb = boardjpa.save(kicboard);
		String msg="게시물 등록 성공";
		String url = "boardList?boardid="+boardid;
		if (boarddb == null) {			msg="게시물 등록 실패";	}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		  return "alert";
	}

	@RequestMapping("boardList")
	public String boardList(String boardid, String pageNum) throws ServletException, IOException {
		
	//	String boardid = request.getParameter("boardid");
		session.setAttribute("boardid", boardid);
	    if (session.getAttribute("boardid")==null) boardid="1"; //1
		
	//	String pageNum = request.getParameter("pageNum");//2
		session.setAttribute("pageNum", pageNum);//3
		 if (session.getAttribute("pageNum")==null) pageNum="1";  //4
		
		
		String boardName="";
		switch (boardid) {
		case "1" : boardName="공지사항"; break;
		case "2" : boardName="자유게시판"; break;
		case "3" : boardName="QnA"; break;
		default : boardName="공지사항";
		}
		session.setAttribute("boardName", boardName);
		int pageInt = Integer.parseInt(pageNum);
		int limit = 3;
		List<KicBoard> li = boardjpa.boardList(boardid, pageInt, limit);
		
		int count = li.size();
		
		
		int boardNum = count - ((pageInt-1)*limit);  //page의 ser계산
		
		int bottomLine = 3;
		int start = (pageInt - 1) / bottomLine * bottomLine + 1;//1,2,3->1 , 4,5,6->4
		int end = start + limit -1 ;// 1~ 3, 4~6, 7~9
		int maxPage = (count / limit) + (count % limit == 0 ? 0 : 1);
		if (end > maxPage) 			end = maxPage;
		
		request.setAttribute("bottomLine", bottomLine);
		request.setAttribute("start", start);
		request.setAttribute("end", end);
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("pageInt", pageInt);
		request.setAttribute("boardNum", boardNum);
		
		request.setAttribute("boardName", boardName);	
		request.setAttribute("li", li);	
		request.setAttribute("boardid", boardid);	
		request.setAttribute("nav", boardid);
		request.setAttribute("count", count);
	
		
		return "board/boardList";
	}
	
	@RequestMapping("boardDeleteForm")
	public String boardDeleteForm(int num) throws ServletException, IOException {
		request.setAttribute("num", num);
		return "board/boardDeleteForm";
	}
	
	@RequestMapping("boardDeletePro")
	public String boardDeletePro(int num) throws ServletException, IOException {
		//int num = Integer.parseInt(request.getParameter("num"));
		String pass = request.getParameter("pass");
		String boardid = (String) session.getAttribute("boardid");  //1
		
		KicBoard boarddb = boardjpa.findById(num).get();
		String msg="삭제 되지 않았습니다";
		String url="boardDeleteForm?num="+num;
		if (boarddb!=null) {		
			  if (pass.equals(boarddb.getPass())) {
				  
				  boardjpa.delete(boarddb);
				  if (boarddb != null) {msg="삭제 되었습니다";
						url="boardList?boardid="+boardid;//2
					} 
			  } else {	  msg = "비밀번호 확인 하세요";   }
			}  else {	 msg = "게시물이 없습니다"; 	}
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			  return "alert";		
	}
	
	

}
