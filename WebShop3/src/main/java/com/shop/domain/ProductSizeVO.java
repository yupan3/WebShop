package com.shop.domain;

public class ProductSizeVO {
	private Integer pnum;//상품 번호 
	private Integer infonum;//테이블 관리 번호
	private String pcolor;//상품 색상
	private String psize;//상품 사이즈
	private Integer pinventory; //상품 재고
	public Integer getPnum() {
		return pnum;
	}
	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}
	public Integer getInfonum() {
		return infonum;
	}
	public void setInfonum(Integer infonum) {
		this.infonum = infonum;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	public Integer getPinventory() {
		return pinventory;
	}
	public void setPinventory(Integer pinventory) {
		this.pinventory = pinventory;
	}
	@Override
	public String toString() {
		return "ProductSizeVO [pnum=" + pnum + ", infonum=" + infonum + ", pcolor=" + pcolor + ", psize=" + psize
				+ ", pinventory=" + pinventory + "]";
	}
	
	
	
}


