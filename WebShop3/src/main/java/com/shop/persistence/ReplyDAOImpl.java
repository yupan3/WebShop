package com.shop.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shop.domain.ReplyVO;
@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.shop.mapper.ReviewMapper";
	
	@Override
	public List<ReplyVO> readreply(Integer reviewno) throws Exception {
		System.out.println("replyDAO의 값 : "+reviewno);
		return session.selectList(namespace + ".readreply",reviewno);
	}

}
