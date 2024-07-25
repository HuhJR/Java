package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mapper.BoardAnno;
import model.Projectborder;




@Component
public class BoardMybatis {
   private String namespace = "mapper.board.";
   
   @Autowired
   SqlSessionTemplate session ;
   
   
   Map map = new HashMap();
   
   public int insertBoard(Projectborder board) {
      int num = session.getMapper(BoardAnno.class).insertBoard(board);
      return num;
      
   }
   

   public List<Projectborder> boardList(String id){
      List<Projectborder> li = session.getMapper(BoardAnno.class).boardList(id);
      return li;
   }
 
   public List<Projectborder> boardListAll(){
       List<Projectborder> li = session.getMapper(BoardAnno.class).boardListAll();
       return li;
    }

   
   public Projectborder getBoard(int num) {
      Projectborder board = session.getMapper(BoardAnno.class).getBoard(num);
      return board;
   }
   
   public Integer boardUpdate(Projectborder board) {
	   System.out.println(board+"-------------------");
       Integer count = session.getMapper(BoardAnno.class).boardUpdate(board);
       System.out.println(count+"========Integer");
	//   int count=0;
	 
      System.out.println(count+"-------------------");
      return count;
      
   }
   public int boardDelete(int boardnum) {
      int count = session.getMapper(BoardAnno.class).deleteBoard(boardnum);
      return count;
   }

   public int Comment(String replycomment, int boardnum, String id) {
	      map.clear();
	      map.put("replycomment", replycomment);
	      map.put("boardnum", boardnum);
	   
	      int num = session.getMapper(BoardAnno.class).Comment(map);
	      return num;
	   }
}
