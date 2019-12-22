package com.shop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.shop.domain.Criteria;
import com.shop.domain.ProductSizeVO;
import com.shop.domain.ReviewVO;
import com.shop.persistence.BoardDAO;
import com.shop.persistence.ProductDAO;
import com.shop.persistence.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewDAO dao;
	
	@Override
	public List<ReviewVO> readreview(Integer pno) throws Exception {
		System.out.println("reviewservice의 값 : "+pno);
		return dao.readreview(pno);
	}

//	@Transactional
//	@Override
//	public void addReply(ReplyVO vo) throws Exception {
//
//		dao.create(vo);
//		boardDAO.updateReplyCnt(vo.getBno(), 1);
//	}
//
//	@Override
//	public List<ReplyVO> listReply(Integer bno) throws Exception {
//
//		return dao.list(bno);
//	}
//
//	@Override
//	public void modifyReply(ReplyVO vo) throws Exception {
//
//		dao.update(vo);
//	}
//
//	@Transactional
//	@Override
//	public void removeReply(Integer rno) throws Exception {
//
//		int bno = dao.getBno(rno);
//		dao.delete(rno);
//		boardDAO.updateReplyCnt(bno, -1);
//	}
//
//	@Override
//	public List<ReplyVO> listReplyPage(Integer bno, Criteria cri) throws Exception {
//
//		return dao.listPage(bno, cri);
//	}
//
//	@Override
//	public int count(Integer bno) throws Exception {
//
//		return dao.count(bno);
//	}

}
