package com.shop.persistence;
import java.util.List;

import com.shop.domain.Criteria;
import com.shop.domain.ProductSizeVO;
import com.shop.domain.ReplyVO;
import com.shop.domain.ReviewVO;




public interface ReplyDAO {
	
	public List<ReplyVO> readreply(Integer reviewno) throws Exception;


}
