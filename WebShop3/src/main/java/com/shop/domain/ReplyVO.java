package com.shop.domain;

import java.util.Date;

public class ReplyVO {
	private Integer replyno;
	private Integer reviewno;
	private String replytitle;
	private String replytext;
	private String replyer;
	private Date regdate;
	private Date updatedate;
	public Integer getReplyno() {
		return replyno;
	}
	public void setReplyno(Integer replyno) {
		this.replyno = replyno;
	}
	public Integer getReviewno() {
		return reviewno;
	}
	public void setReviewno(Integer reviewno) {
		this.reviewno = reviewno;
	}
	public String getReplytitle() {
		return replytitle;
	}
	public void setReplytitle(String replytitle) {
		this.replytitle = replytitle;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	@Override
	public String toString() {
		return "ReplyVO [replyno=" + replyno + ", reviewno=" + reviewno + ", replytitle=" + replytitle + ", replytext="
				+ replytext + ", replyer=" + replyer + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

	



  
}
