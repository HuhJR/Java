package mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import model.Projectmember;
import model.Reservation;

public interface MemberAnno {
   @Select("select * from projectmember where id = #{id}")
   Projectmember getMember(String id);
   
   @Select("select * from projectmember")
   List<Projectmember> memberList();
   
   @Insert("insert into projectmember values (#{id},#{pass},#{name},#{birthyear},#{birthmonth},#{birthday},#{email},#{tel},#{gender},0,0)")
   int insertMember(Projectmember kic);
   
   @Insert("update projectmember set name=#{name}, birthyear=#{birthyear}, birthmonth=#{birthmonth},birthday=#{birthday},tel=#{tel}, gender=#{gender} where id = #{id}")
   int updateMember(Projectmember kic);
   
   @Select("delete from  projectmember where id = #{id}")
   int deleteMember(String id);
   
   @Insert("update projectmember set name=#{name}, birthyear=#{birthyear}, birthmonth=#{birthmonth}, birthday=#{birthday}, "
   		+ " email=#{email}, tel=#{tel}, gender=#{gender}, pass=#{chgpass} where id = #{id}")
   int chgPassMember(Map map);

   @Select("SELECT locid FROM location WHERE locname = #{location}")
   String getLocationId(@Param("location") String location);

   @Select("SELECT theaterid FROM theater WHERE theatername = #{theater}")
   String getTheaterId(@Param("theater") String theater);

   @Select("SELECT date2id FROM date2 WHERE date2name = #{date2}")
   String getDateId(@Param("date2") String date2);

   @Select("SELECT movieid FROM movie WHERE moviename = #{movie}")
   String getMovieId(@Param("movie") String movie);

   @Select("SELECT timeid FROM time WHERE timename = #{time}")
   String getTimeId(@Param("time") String time);

   @Insert("INSERT INTO reservation (reservationid ,id, locid, theaterid, date2id, movieid, timeid, totalperson, seatsname) VALUES (reservationseq.nextval ,#{id}, #{locationId}, #{theaterId}, #{dateId}, #{movieId}, #{timeId}, 0, 0)")
   int insertReservation(@Param("id") String id, @Param("locationId") String locationId, @Param("theaterId") String theaterId, @Param("dateId") String dateId, @Param("movieId") String movieId, @Param("timeId") String timeId);

   @Select("SELECT r.*, l.locname, t.theatername, d.date2name, m.moviename, m.movieage, ti.timename " +
           "FROM reservation r " +
           "JOIN location l ON r.locid = l.locid " +
           "JOIN theater t ON r.theaterid = t.theaterid " +
           "JOIN date2 d ON r.date2id = d.date2id " +
           "JOIN movie m ON r.movieid = m.movieid " +
           "JOIN time ti ON r.timeid = ti.timeid " +
           "WHERE r.id = #{id}")
   Reservation getReservation(@Param("id") String id);

   @Select("SELECT * FROM reservation WHERE id = #{id}")
   String getReserv(@Param("id") String id);

   @Select("select seatsname from seats where occupied = 1 and timeid = #{timeid}")
   List<String> getOccupied(@Param("timeid") String timeid);
   
   @Update("update reservation set seatsname = #{seatsname}, totalperson=#{totalperson} where id = #{id}")
   int updateReservation(@Param("seatsname") String seatsname, @Param("totalperson") String totalperson,
         @Param("id") String id);

   @Update({ "<script>", "UPDATE seats SET occupied = 1", "WHERE seatsname IN",
         "<foreach item='item' collection='seatsnameList' open='(' separator=',' close=')'>", "#{item}",
         "</foreach>", "AND timeid = #{timeid}", "</script>" })
   int occupied(@Param("seatsnameList") List<String> seatsnameList, @Param("timeid") String timeid);
   
   @Select("delete from  reservation where id = #{id}")
   int cancelReservation(String id);
}
