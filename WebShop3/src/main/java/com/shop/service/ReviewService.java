package com.shop.service;

import java.util.List;


import com.shop.domain.Criteria;
import com.shop.domain.ProductSizeVO;
import com.shop.domain.ReviewVO;

public interface ReviewService {
	public List<ReviewVO> readreview(Integer pno) throws Exception;
	
//  public void addReply(ReplyVO vo) throws Exception;
//
//  public List<ReplyVO> listReply(Integer bno) throws Exception;
//
//  public void modifyReply(ReplyVO vo) throws Exception;
//
//  public void removeReply(Integer rno) throws Exception;
//
//  public List<ReplyVO> listReplyPage(Integer bno, Criteria cri) 
//      throws Exception;
//
//  public int count(Integer bno) throws Exception;
}
