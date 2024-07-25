package model;

import java.util.List;

public class Reservation {
	private String reservationid;
    private String id;
    private String locid;
    private String theaterid;
    private String date2id;
    private String movieid;
    private String timeid;
    private String totalperson;
    private String seatsname;
	private String locname;
	private String theatername;
	private String date2name;
	private String moviename;
	private String timename;
	private String movieage;
	public String getReservationid() {
		return reservationid;
	}
	public void setReservationid(String reservationid) {
		this.reservationid = reservationid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLocid() {
		return locid;
	}
	public void setLocid(String locid) {
		this.locid = locid;
	}
	public String getTheaterid() {
		return theaterid;
	}
	public void setTheaterid(String theaterid) {
		this.theaterid = theaterid;
	}
	public String getDate2id() {
		return date2id;
	}
	public void setDate2id(String date2id) {
		this.date2id = date2id;
	}
	public String getMovieid() {
		return movieid;
	}
	public void setMovieid(String movieid) {
		this.movieid = movieid;
	}
	public String getTimeid() {
		return timeid;
	}
	public void setTimeid(String timeid) {
		this.timeid = timeid;
	}
	public String getTotalperson() {
		return totalperson;
	}
	public void setTotalperson(String totalperson) {
		this.totalperson = totalperson;
	}
	public String getSeatsname() {
		return seatsname;
	}
	public void setSeatsname(String seatsname) {
		this.seatsname = seatsname;
	}
	public String getLocname() {
		return locname;
	}
	public void setLocname(String locname) {
		this.locname = locname;
	}
	public String getTheatername() {
		return theatername;
	}
	public void setTheatername(String theatername) {
		this.theatername = theatername;
	}
	public String getDate2name() {
		return date2name;
	}
	public void setDate2name(String date2name) {
		this.date2name = date2name;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getTimename() {
		return timename;
	}
	public void setTimename(String timename) {
		this.timename = timename;
	}
	public String getMovieage() {
		return movieage;
	}
	public void setMovieage(String movieage) {
		this.movieage = movieage;
	}
	@Override
	public String toString() {
		return "Reservation [reservationid=" + reservationid + ", id=" + id + ", locid=" + locid + ", theaterid="
				+ theaterid + ", date2id=" + date2id + ", movieid=" + movieid + ", timeid=" + timeid + ", totalperson="
				+ totalperson + ", seatsname=" + seatsname + ", locname=" + locname + ", theatername=" + theatername
				+ ", date2name=" + date2name + ", moviename=" + moviename + ", timename=" + timename + ", movieage="
				+ movieage + "]";
	}
	
	
    
    
}
