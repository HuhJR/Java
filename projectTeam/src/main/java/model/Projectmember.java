 package model;

public class Projectmember {
	private String id;
	private String name;
	private String moviename;
	private String pass;
	private String email;
	private String tel;
	private int gender;
	private String picture;
	private String birthyear;
	private String birthmonth;
	private String birthday;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getBirthyear() {
		return birthyear;
	}
	public void setBirthyear(String birthyear) {
		this.birthyear = birthyear;
	}
	public String getBirthmonth() {
		return birthmonth;
	}
	public void setBirthmonth(String birthmonth) {
		this.birthmonth = birthmonth;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	@Override
	public String toString() {
		return "Projectmember [id=" + id + ", name=" + name + ", moviename=" + moviename + ", pass=" + pass + ", email="
				+ email + ", tel=" + tel + ", gender=" + gender + ", picture=" + picture + ", birthyear=" + birthyear
				+ ", birthmonth=" + birthmonth + ", birthday=" + birthday + "]";
	}
	
	
}
