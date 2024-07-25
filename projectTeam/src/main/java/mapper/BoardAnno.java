package mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import model.Projectborder;


public interface BoardAnno {
	   @Select("select * from projectborder where boardnum = #{boardnum}")
	   Projectborder getBoard(int boardnum);
	   
	   @Select("select * from projectborder ")
	   List<Projectborder> boardListAll();

	   @Select("select * from projectborder ")
	   List<Projectborder> addReadCount();
	   
	   @Select("select * from projectborder  where id = #{id}")
	   List<Projectborder> boardList(String id);
	   
	   @Insert("insert into projectborder values (#{id},projectborderseq.nextval,#{subject},#{content},#{file1},sysdate,#{boardid},'')")
	   int insertBoard(Projectborder board);
	  
	   @Update("update projectborder set subject='${subject}',content='${content}',file1='${file1}'  where boardnum = #{boardnum}")
	   Integer boardUpdate(Projectborder kic);
	   
	   @Delete("delete from projectborder where boardnum = #{boardnum}")
	   int deleteBoard(int boardnum);
	   
	   @Select("update projectborder set pass=#{pass} where id = #{id}")
	   int chgPassBoard(Map map);
   
	   @Update("update projectborder set replycomment=#{replycomment} where boardnum=#{boardnum}")
       int Comment(Map map);
}
