package com.shop.domain;

import java.util.Date;

public class ReviewVO {

  private Integer rno;
  private Integer pno;
  private String rimg;
  private String reviewtitle;
  private String reviewtext;
  private String reviewer;
  private Date regdate;
  private Date updatedate;
public Integer getRno() {
	return rno;
}
public void setRno(Integer rno) {
	this.rno = rno;
}
public Integer getPno() {
	return pno;
}
public void setPno(Integer pno) {
	this.pno = pno;
}
public String getRimg() {
	return rimg;
}
public void setRimg(String rimg) {
	this.rimg = rimg;
}
public String getReviewtitle() {
	return reviewtitle;
}
public void setReviewtitle(String reviewtitle) {
	this.reviewtitle = reviewtitle;
}
public String getReviewtext() {
	return reviewtext;
}
public void setReviewtext(String reviewtext) {
	this.reviewtext = reviewtext;
}
public String getReviewer() {
	return reviewer;
}
public void setReviewer(String reviewer) {
	this.reviewer = reviewer;
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
	return "ReviewVO [rno=" + rno + ", pno=" + pno + ", rimg=" + rimg + ", reviewtitle=" + reviewtitle + ", reviewtext="
			+ reviewtext + ", reviewer=" + reviewer + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
}



  
}
