package com.shop.service;

import java.util.List;


import com.shop.domain.Criteria;
import com.shop.domain.ProductSizeVO;
import com.shop.domain.ReplyVO;
import com.shop.domain.ReviewVO;

public interface ReplyService {
	public List<ReplyVO> readreply(Integer reviewno) throws Exception;

}
