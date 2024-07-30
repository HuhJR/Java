package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import model.Comment;
import model.KicBoard;
import model.KicMember;
import util.MybatisConnection;

@Component
public class KicBoardMybatis {
	
	@Autowired
	SqlSessionTemplate session ;
	
	private String namespace = "mapper.board.";
	Map map = new HashMap();
	
	public int insertBoard(KicBoard board) {
		int num = session.insert(namespace+"insertBoard",board);
		return num;
	}
	public int insertComment(String comment, int boardnum, String id) {
		map.clear();
		map.put("comment", comment);
		map.put("boardnum", boardnum);
		map.put("id", id);
		
		int num = session.insert(namespace+"insertComment",map);
		return num;
	}
	public List<KicBoard> boardList(String boardid, int pageInt, int limit){
		map.clear();
		map.put("boardid", boardid);
		map.put("start", (pageInt-1)*limit+1);
		map.put("end", pageInt*limit);
		
		List<KicBoard> li = session.selectList(namespace+"boardList",map);
		return li;
	}
	public int boardCount(String boardid) {
		int num = session.selectOne(namespace+"boardCount",boardid);
		return num;
	}

	public int getCommentCount(int boardnum) {
		int num = session.selectOne(namespace+"getCommentCount",boardnum);
		return num;
	}
	
	public List<Comment> commentList(int boardnum){
		List<Comment> li = session.selectList(namespace+"commentList",boardnum);
		return li;
	}
	
	public KicBoard getBoard(int num) {
		KicBoard board = session.selectOne(namespace+"getBoard",num);
		return board;
	}
	
	public int addReadCount(int num) {
		int count = session.insert(namespace+"addReadCount",num);
		return count;
	}
	
	public int boardUpdate(KicBoard board) {
		int count = session.insert(namespace+"boardUpdate",board);
		return count;
	}
	
	public int boardDelete(int num) {
		int count = session.insert(namespace+"boardDelete",num);
		return count;
	}
}
