package dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mapper.MemberAnno;
import model.KicMember;
import util.MybatisConnection;


@Component
public class KicmemberMybatis {
	
	@Autowired
	SqlSessionTemplate session ;
	
	public KicMember getMember(String id) {
		KicMember mem = session.getMapper(MemberAnno.class).getMember(id);
		return mem;
	}
	
	public List<KicMember> memberList(){
		List<KicMember> li = session.getMapper(MemberAnno.class).memberList();
		return li;
	}
	
	public int insertMember(KicMember kic) {
		int num = session.getMapper(MemberAnno.class).insertMember(kic);
		//session.commit();
		return num;
	}
		
	public int updateMember(KicMember kic) {
		int num = session.getMapper(MemberAnno.class).updateMember(kic);
		//session.commit();
		return num;
	}
	
	public int deleteMember(String id) {
		int num = session.getMapper(MemberAnno.class).deleteMember(id);
		//session.commit();
		return num;
	}
	
	public int chgPassMember(String id, String chgpass) {
		Map map = new HashMap();
		map.put("id", id);
		map.put("chgpass", chgpass);
		
		int num = session.getMapper(MemberAnno.class).chgPassMember(map);
		//session.commit();
		return num;
	}
	
	
	
}
