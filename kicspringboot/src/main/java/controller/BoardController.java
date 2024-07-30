package controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import dao.KicBoardMybatis;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import model.Comment;
import model.KicBoard;


@RestController
@RequestMapping("/board/")
@CrossOrigin(origins = "http://localhost:3000",allowCredentials = "true")
public class BoardController {
	HttpServletRequest request;
	@Autowired
	KicBoardMybatis mybatisdao = new KicBoardMybatis();
	
	@ModelAttribute
	protected void service(HttpServletRequest request) throws ServletException, IOException {
		this.request = request;
		
	}

	@GetMapping("boardInfo")
	public Map<String, Object> boardInfo(int num) throws ServletException, IOException {
		Map<String, Object> map = new HashMap<>();
		System.out.println(num);
		
		mybatisdao.addReadCount(num); //readcnt++
		KicBoard board = mybatisdao.getBoard(num);
		int count = mybatisdao.getCommentCount(num);
		List<Comment> li = mybatisdao.commentList(num);
		map.put("board", board);
		map.put("li", li);
		map.put("count", count);
		
		return map;	
	}
	
	@GetMapping("boardCommentPro")
	public Map<String, Object> boardCommentPro(String comment, int boardnum, String id) throws ServletException, IOException {
		Map<String, Object> map = new HashMap<>();
		mybatisdao.insertComment(comment, boardnum, id);
		int count = mybatisdao.getCommentCount(boardnum);
		map.put("comment", comment);
		map.put("count", count);
		map.put("id", id);
		return map;	
	}
	@PostMapping("boardPro")
	public int boardPro(@RequestParam(value = "file2", required = false) MultipartFile multipartFile, KicBoard kicboard) throws ServletException, IOException {
		String path = request.getServletContext().getRealPath("/")+"img/board/";
		String filename="";
		if(multipartFile!=null && !multipartFile.isEmpty()) {
			File file = new File(path, multipartFile.getOriginalFilename());
			filename = multipartFile.getOriginalFilename();
			
			multipartFile.transferTo(file);
			
		}
		kicboard.setBoardid("1");
		kicboard.setFile1(filename);
		System.out.println(kicboard);
		
		int num = mybatisdao.insertBoard(kicboard);
		return num;
	}
	
	@GetMapping("boardList")
	public Map<String, Object> boardList(String boardid, String pageNum) throws ServletException, IOException {
		Map<String, Object> map = new HashMap<>();
		
		if (boardid==null)  boardid = "1";
	    if (pageNum==null)  pageNum = "1";
		
		String boardName = "";
		switch (boardid) {
		case "1": boardName="공지사항";break;
		case "2": boardName="자유게시판";break;
		case "3": boardName="QnA";break;
		default: boardName="공지사항";break;
		}
		
		int count = mybatisdao.boardCount(boardid);
		int limit = 3;
		int pageInt = Integer.parseInt(pageNum);
		int boardNum = count - ((pageInt-1)*limit); //page의 ser계산
		
		int bottomLine = 3;
		int start = (pageInt-1)/bottomLine*bottomLine+1; //page안에 들어가는 개수
		int end = start+limit-1;
		int maxPage = (count/limit)+(count%limit==0?0:1);
		if(end>maxPage) end=maxPage;
		
		List<KicBoard> li = mybatisdao.boardList(boardid,pageInt,limit);
		
		map.put("bottomLine", bottomLine);
		map.put("start", start);
		map.put("end", end);
		map.put("maxPage", maxPage);
		map.put("pageInt", pageInt);
		map.put("boardNum", boardNum);
		
		map.put("boardName", boardName);
		map.put("li", li);
		map.put("boardid", boardid);
		map.put("nav", boardid);
		map.put("count", count);
		
		return map;	
	}
	
	
}
