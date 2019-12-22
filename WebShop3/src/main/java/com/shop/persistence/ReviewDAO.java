package com.shop.persistence;
import java.util.List;

import com.shop.domain.Criteria;
import com.shop.domain.ProductSizeVO;
import com.shop.domain.ReviewVO;




public interface ReviewDAO {
	
	public List<ReviewVO> readreview(Integer pno) throws Exception;

	/*
	 * public List<ReplyVO> list(Integer bno) throws Exception;
	 * 
	 * public void create(ReplyVO vo) throws Exception;
	 * 
	 * public void update(ReplyVO vo) throws Exception;
	 * 
	 * public void delete(Integer rno) throws Exception;
	 * 
	 * public List<ReplyVO> listPage( Integer bno, Criteria cri) throws Exception;
	 * 
	 * public int count(Integer bno) throws Exception;
	 * 
	 * public int getBno(Integer rno) throws Exception;
	 */

}
