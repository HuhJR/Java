package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mapper.MemberAnno;
import model.Projectmember;
import model.Reservation;


@Component
public class MemberMybatis {
	
	
	@Autowired
	SqlSessionTemplate session;

	public Projectmember getMember(String id) {
		Projectmember mem = session.getMapper(MemberAnno.class).getMember(id);
		return mem;
	}

	public int insertMember(Projectmember mem) {
		int num = session.getMapper(MemberAnno.class).insertMember(mem);
		return num;
	}

	public int updateMember(Projectmember mem) {
		int num = session.getMapper(MemberAnno.class).updateMember(mem);
		return num;
	}

	public int deleteMember(String id) {
		int num = session.getMapper(MemberAnno.class).deleteMember(id);
		return num;
	}

	public int chgPassMember(Projectmember mem, String chgpass) {
		Map map = new HashMap();
		map.put("mem", mem);
		map.put("chgpass", chgpass);

		int num = session.getMapper(MemberAnno.class).chgPassMember(map);
		return num;
	}

	public int makeReservation(String id, String location, String theater, String date2, String movie, String time) {
		String locationId = session.getMapper(MemberAnno.class).getLocationId(location);
		String theaterId = session.getMapper(MemberAnno.class).getTheaterId(theater);
		String dateId = session.getMapper(MemberAnno.class).getDateId(date2);
		String movieId = session.getMapper(MemberAnno.class).getMovieId(movie);
		String timeId = session.getMapper(MemberAnno.class).getTimeId(time);
		System.out.println("Parameters: " + id + ", " + locationId + ", " + theaterId + ", " + dateId + ", " + movieId
				+ ", " + timeId);
		int num = session.getMapper(MemberAnno.class).insertReservation(id, locationId, theaterId, dateId, movieId,
				timeId);

		return num;
	}

	public Reservation getReservation(String id) {
		Reservation mem = session.getMapper(MemberAnno.class).getReservation(id);
		return mem;
	}

	public Reservation getReserv(String id) {
		Reservation mem = session.getMapper(MemberAnno.class).getReservation(id);
		return mem;
	}

	public List<String> getOccupied(String timeid) {
		List<String> li = session.getMapper(MemberAnno.class).getOccupied(timeid);
		return li;
	}

	public int updateReservation(String seatsname, String totalperson, String id) {
		int num = session.getMapper(MemberAnno.class).updateReservation(seatsname, totalperson, id);
		return num;
	}

	public int cancelReservation(String id) {
		int num = session.getMapper(MemberAnno.class).cancelReservation(id);
		return num;
	}

	public int occupied(List<String> seatsnameList, String timeid) {
	      int num = session.getMapper(MemberAnno.class).occupied(seatsnameList, timeid);
	      System.out.println(num);
	      return num;
	   }

}
