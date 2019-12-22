package com.shop.controller;

import java.text.DateFormat;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.binding.MapperMethod.ParamMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.ProductSizeVO;
import com.shop.domain.ProductVO;
import com.shop.service.ProductService;

@Controller
@RequestMapping("/Product/*")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Inject
	private ProductService service;

//	@RequestMapping(value = "/read", method = RequestMethod.GET)
//	public String read(@RequestParam("pnum") int pnum, Model model) throws Exception {
//		model.addAttribute("productVO",service.read(pnum));
//		
//		return "redirect:/Product/read2?pnum="+pnum;
//	}
//	
//	@RequestMapping(value = "/read2", method = RequestMethod.GET)
//	public void read2(@RequestParam("pnum") int pnum, Model model) throws Exception {
//		model.addAttribute("readsize",service.readSize(pnum));
//	}

	/*
	 * 테스트용이었음
	 * 
	 * @RequestMapping(value ="0001/selectGftctPupl.do", method = RequestMethod.GET)
	 * public void selectGftctPupl(@RequestParam("pnum") int
	 * pnum, @RequestParam("size") String size, Model model){
	 * logger.info("show testing......................"); }
	 */

	@RequestMapping(value = "/size", method = RequestMethod.GET)
	public void size(@RequestParam("pnum") int pnum, Model model) throws Exception {
		logger.info("show inventory......................");
		model.addAttribute("readsize", service.readInfo(pnum));
	}

	/*
	 * @RequestMapping(value = "/ajaxselectcolor") public ModelAndView
	 * ajaxselectcolor2(@RequestParam("pnum") int pnum, @RequestParam("size") String
	 * size,HttpServletRequest request, HttpServletResponse response) throws
	 * Exception { logger.info("show ajaxselectcolor......................");
	 * logger.info(size); logger.info(Integer.toString(pnum)); ParamMap
	 * paramMap=parseRequest(pnum,size);
	 * 
	 * ModelAndView modelAndView=new ModelAndView();
	 * 
	 * List<ParamMap> getprodtypecnt = service.ajaxselectcolor(pnum,size);
	 * model.addAttribute("colorselectbox",service.ajaxselectcolor(pnum,size)); }
	 * 
	 * private ParamMap parseRequest(int pnum,String size) throws Exception { Model
	 * model = null;
	 * model.addAttribute("colorselectbox",service.ajaxselectcolor(pnum,size));
	 * return ProductSizeVO; }
	 */

	
//	  @ResponseBody
//	  @RequestMapping(value = "/ajaxselectcolor", method = RequestMethod.GET)
//	  public ModelAndView ajaxselectcolor2(@RequestParam("pnum") int
//	  pnum, @RequestParam("size") String size, ModelMap model) throws Exception {
//	  logger.info("show ajaxselectcolor......................"); logger.info(size);
//	  logger.info(Integer.toString(pnum));
//	  model.addAttribute("colorselectbox",service.ajaxselectcolor(pnum,size));
//	  
//	  return ModelAndView;
	 

	
	  @ResponseBody
	  @RequestMapping(value = "/ajaxselectcolor", method = RequestMethod.GET)
	  public List<ProductSizeVO> ajaxselectcolor(@RequestParam("pnum") int
	  pnum, @RequestParam("size") String size, Model model) throws Exception {
	  logger.info("show ajaxselectcolor......................"); logger.info(size);
	  logger.info(Integer.toString(pnum));
//	  model.addAttribute("colorselectbox",service.ajaxselectcolor(pnum,size)); 
	  
	  
	  return service.ajaxselectcolor(pnum,size);
	  
	  }
	 

	@RequestMapping(value = "/inventory", method = RequestMethod.GET)
	public void read(@RequestParam("pnum") int pnum, Model model) throws Exception {
		logger.info("show inventory......................");
		model.addAttribute("readsize", service.readInfo(pnum));
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read2(@RequestParam("pnum") int pnum, Model model) throws Exception {
		model.addAttribute(service.read(pnum));
		model.addAttribute("readinfo", service.readInfo(pnum));
	}

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public void categoriesGET(Model model) throws Exception {

		logger.info("show all list......................");
		model.addAttribute("list", service.listAll());
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public void cartGET(ProductVO board, Model model) throws Exception {

		logger.info("register get ...........");
	}

	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public String cartPOST(ProductVO board, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(board.toString());

		rttr.addFlashAttribute("msg", "success");
		return "redirect:/Product/cart";
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public void checkoutGET(ProductVO board, Model model) throws Exception {

		logger.info("categories get ...........");
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String checkoutPOST(ProductVO board, RedirectAttributes rttr) throws Exception {

		logger.info("categories post ...........");
		logger.info(board.toString());

		rttr.addFlashAttribute("msg", "success");
		return "redirect:/Product/checkout";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void contactGET(ProductVO board, Model model) throws Exception {

		logger.info("categories get ...........");
	}

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String contactPOST(ProductVO board, RedirectAttributes rttr) throws Exception {

		logger.info("categories post ...........");
		logger.info(board.toString());

		rttr.addFlashAttribute("msg", "success");
		return "redirect:/Product/contact";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void indexGET(ProductVO board, Model model) throws Exception {

		logger.info("categories get ...........");
	}

	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public String indexPOST(ProductVO board, RedirectAttributes rttr) throws Exception {

		logger.info("categories post ...........");
		logger.info(board.toString());

		rttr.addFlashAttribute("msg", "success");
		return "redirect:/Product/index";
	}

}
