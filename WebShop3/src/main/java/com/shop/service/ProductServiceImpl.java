package com.shop.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.shop.domain.ProductSizeVO;
import com.shop.domain.ProductVO;
import com.shop.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	private ProductDAO dao;
	
	@Override
	public ProductVO read(Integer pnum) throws Exception {
		return dao.read(pnum);
	}
	
	@Override
	public List<ProductSizeVO> ajaxselectcolor(Integer pnum, String productSize) throws Exception{
		return dao.ajaxselectcolor(pnum,productSize);
	};
	
	@Override
	public List<ProductVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<ProductSizeVO> readInfo(Integer pnum) throws Exception {
		System.out.println("ProductService의 pnum값 :"+pnum);
		return dao.readInfo(pnum);
	}
	
}
