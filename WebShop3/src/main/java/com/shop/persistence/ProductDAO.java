package com.shop.persistence;

import java.util.List;

import com.shop.domain.ProductSizeVO;
import com.shop.domain.ProductVO;

public interface ProductDAO {
	
	public ProductVO read(Integer pnum) throws Exception;
	public List<ProductSizeVO> ajaxselectcolor (Integer pnum, String productSize) throws Exception;
	public List<ProductVO> listAll() throws Exception;
	public List<ProductSizeVO> readInfo(Integer pnum) throws Exception;
}
