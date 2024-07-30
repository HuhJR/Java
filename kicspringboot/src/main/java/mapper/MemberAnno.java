package mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import model.KicMember;

public interface MemberAnno {
	@Select("select * from kicmember where id = #{id}")
	KicMember getMember(String id);
	
	@Select("select * from kicmember")
	List<KicMember> memberList();
	
	@Insert("insert into kicmember values (#{id},#{pass},#{name},#{gender},#{tel},#{email},#{prcture})")
	int insertMember(KicMember kic);
	 
	@Select("update kicmember set name=#{name}, gender=#{gender}, tel=#{tel}, email=#{email}, prcture=#{prcture} where id = #{id}")
	int updateMember(KicMember kic);
	
	@Select("delete from  kicmember where id = #{id}")
	int deleteMember(String id);
	
	@Select("update kicmember set pass=#{chppass} where id = #{id}")
	int chgPassMember(Map map);

}
