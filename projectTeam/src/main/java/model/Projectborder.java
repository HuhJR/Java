package model;

import java.util.Date;

public class Projectborder {
	
	private String id;
	private int boardnum;
	private String subject;
	private String content;
	private String file1;
	private Date regdate;
	private String boardid;
	private String replycomment;
	private String formattedRegdate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile1() {
		return file1;
	}
	public void setFile1(String file1) {
		this.file1 = file1;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	

	public String getBoardid() {
		return boardid;
	}
	public void setBoardid(String boardid) {
		this.boardid = boardid;
	}

	public String getFormattedRegdate() {
		return formattedRegdate;
	}
	public void setFormattedRegdate(String formattedRegdate) {
		this.formattedRegdate = formattedRegdate;
	}
	public String getReplycomment() {
		return replycomment;
	}
	public void setReplycomment(String replycomment) {
		this.replycomment = replycomment;
	}
	@Override
	public String toString() {
		return "Projectborder [id=" + id + ", boardnum=" + boardnum + ", subject=" + subject + ", content=" + content
				+ ", file1=" + file1 + ", regdate=" + regdate + ", boardid=" + boardid + ", replycomment="
				+ replycomment + ", formattedRegdate=" + formattedRegdate + "]";
	}
	
	
}
