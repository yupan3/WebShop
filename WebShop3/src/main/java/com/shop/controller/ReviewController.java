package com.shop.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.shop.domain.Criteria;
import com.shop.domain.PageMaker;
import com.shop.domain.ReviewVO;
import com.shop.service.ReplyService;
import com.shop.service.ReviewService;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
//이걸로 하는중
private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
  @Inject
  private ReviewService service;
  @Inject
  private ReplyService replyservice;

//  @RequestMapping(value = "", method = RequestMethod.POST)
//  public ResponseEntity<String> register(@RequestBody ReplyVO vo) {
//
//    ResponseEntity<String> entity = null;
//    try {
//      service.addReply(vo);
//      entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
//    } catch (Exception e) {
//      e.printStackTrace();
//      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
//    }
//    return entity;
//  }

  @RequestMapping(value = "/review", method = RequestMethod.GET)
  public void review(@RequestParam("pno") Integer pno, Model model) throws Exception {
	  logger.info("show review......................"+pno);
	  model.addAttribute("readreview",service.readreview(pno));
  }
  
  @RequestMapping(value = "/reply", method = RequestMethod.GET)
  public void reply(@RequestParam("rno") Integer rno, Model model) throws Exception {
	  logger.info("show reply......................"+rno);
	  model.addAttribute("readreply",replyservice.readreply(rno));
  }

	/*
	 * @RequestMapping(value = "/{rno}", method = { RequestMethod.PUT,
	 * RequestMethod.PATCH }) public ResponseEntity<String>
	 * update(@PathVariable("rno") Integer rno, @RequestBody ReplyVO vo) {
	 * 
	 * ResponseEntity<String> entity = null; try { vo.setRno(rno);
	 * service.modifyReply(vo);
	 * 
	 * entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK); } catch
	 * (Exception e) { e.printStackTrace(); entity = new
	 * ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); } return
	 * entity; }
	 * 
	 * @RequestMapping(value = "/{rno}", method = RequestMethod.DELETE) public
	 * ResponseEntity<String> remove(@PathVariable("rno") Integer rno) {
	 * 
	 * ResponseEntity<String> entity = null; try { service.removeReply(rno); entity
	 * = new ResponseEntity<String>("SUCCESS", HttpStatus.OK); } catch (Exception e)
	 * { e.printStackTrace(); entity = new ResponseEntity<>(e.getMessage(),
	 * HttpStatus.BAD_REQUEST); } return entity; }
	 * 
	 * @RequestMapping(value = "/{bno}/{page}", method = RequestMethod.GET) public
	 * ResponseEntity<Map<String, Object>> listPage(
	 * 
	 * @PathVariable("bno") Integer bno,
	 * 
	 * @PathVariable("page") Integer page) {
	 * 
	 * ResponseEntity<Map<String, Object>> entity = null;
	 * 
	 * try { Criteria cri = new Criteria(); cri.setPage(page);
	 * 
	 * PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>(); List<ReplyVO> list =
	 * service.listReplyPage(bno, cri);
	 * 
	 * map.put("list", list);
	 * 
	 * int replyCount = service.count(bno); pageMaker.setTotalCount(replyCount);
	 * 
	 * map.put("pageMaker", pageMaker);
	 * 
	 * entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); entity = new
	 * ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST); } return entity;
	 * }
	 */

}
