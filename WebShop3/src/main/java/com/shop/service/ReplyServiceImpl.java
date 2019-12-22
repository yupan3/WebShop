package com.shop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.shop.domain.ReplyVO;
import com.shop.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {


	@Inject
	private ReplyDAO dao;
	
	@Override
	public List<ReplyVO> readreply(Integer reviewno) throws Exception {
		System.out.println("replyservice의 값 : "+reviewno);
		return dao.readreply(reviewno);
	}

}
