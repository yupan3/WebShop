package com.shop.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shop.domain.ProductSizeVO;
import com.shop.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.shop.mapper.ProductMapper";
	
	@Override
	public ProductVO read(Integer pnum) throws Exception {
		return session.selectOne(namespace + ".read", pnum);
	}
	
	/*
	 * @Override public List<ProductSizeVO> ajaxselectcolor (Integer pnum, String
	 * productSize) throws Exception{ Map<String, Object> paramMap = new
	 * HashMap<>();
	 * 
	 * paramMap.put("pnum", pnum); paramMap.put("productSize", productSize);
	 * 
	 * return session.selectList(namespace + ".ajaxselectcolor", paramMap); };
	 */
	
	@Override
	public List<ProductSizeVO> ajaxselectcolor (Integer pnum, String productSize) throws Exception{
		   Map<String, Object> paramMap = new HashMap<>();

		      paramMap.put("pnum", pnum);
		      paramMap.put("productSize", productSize);

		      return session.selectList(namespace + ".ajaxselectcolor", paramMap);
	};

	@Override
	public List<ProductVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}
	
	@Override
	public List<ProductSizeVO> readInfo(Integer pnum) throws Exception {
		System.out.println("ProductDAOpnum값 :"+pnum);
		return session.selectList(namespace + ".readInfo",pnum);
	}

}
