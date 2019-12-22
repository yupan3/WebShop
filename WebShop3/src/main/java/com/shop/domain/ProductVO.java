package com.shop.domain;

public class ProductVO {
	private Integer pnum;//상품 번호 
	private String pname; //상품 이름
	private String pprice; //상품 가격
	private Integer Pcategory;//상품 카테고리
	private String pimg; // 이미지 이름
	private String pimg2; // 이미지 이름
	private String pimg3; // 이미지 이름
	private String pcontent; //제품 소개
	private char puse; //제품 사용가능 유무
	private Integer pdiscount; // 제품 할인률
	private Integer pstar; // 제품 평점
	public Integer getPnum() {
		return pnum;
	}
	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public Integer getPcategory() {
		return Pcategory;
	}
	public void setPcategory(Integer pcategory) {
		Pcategory = pcategory;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String getPimg2() {
		return pimg2;
	}
	public void setPimg2(String pimg2) {
		this.pimg2 = pimg2;
	}
	public String getPimg3() {
		return pimg3;
	}
	public void setPimg3(String pimg3) {
		this.pimg3 = pimg3;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public char getPuse() {
		return puse;
	}
	public void setPuse(char puse) {
		this.puse = puse;
	}
	public Integer getPdiscount() {
		return pdiscount;
	}
	public void setPdiscount(Integer pdiscount) {
		this.pdiscount = pdiscount;
	}
	public Integer getPstar() {
		return pstar;
	}
	public void setPstar(Integer pstar) {
		this.pstar = pstar;
	}
	@Override
	public String toString() {
		return "ProductVO [pnum=" + pnum + ", pname=" + pname + ", pprice=" + pprice + ", Pcategory=" + Pcategory
				+ ", pimg=" + pimg + ", pimg2=" + pimg2 + ", pimg3=" + pimg3 + ", pcontent=" + pcontent + ", puse="
				+ puse + ", pdiscount=" + pdiscount + ", pstar=" + pstar + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
