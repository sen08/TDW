package tdw.biz.notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tdw.biz.notice.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;

	@RequestMapping("/notice/noticeList")	//url에 이 주소입력하셈
	public ModelAndView main(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {

		List<Map<String, Object>> list = noticeService.selectNoticeList(params);
		System.out.println("==== return list ===== ");

		model.addObject("dsTable", list);
		
		model.setViewName("/notice/noticeList");
		return model;
	}	

	@RequestMapping("/notice/noticeWrite")	//url에 이 주소입력하셈
	public ModelAndView noticeWritePage(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
		
		System.out.println("==== write ====");
		
		
		model.setViewName("/notice/noticeWrite");
		return model;
	}	
	
	@RequestMapping("/notice/noticeDetail")	//url에 이 주소입력하셈
	public ModelAndView noticeDetailPage(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {

		List<Map<String, Object>> list = noticeService.selectNoticeDetail(params);
		System.out.println("==== Detail ===== "+list);

		model.addObject("dsTable", list);
		
		model.setViewName("/notice/noticeDetail");
		return model;
	}	
	@RequestMapping(value = "/notice/noticeWrite", method = RequestMethod.POST)	//url에 이 주소입력하셈
	public ModelAndView insertNoticeBoard(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {

		System.out.println("==== Write1 ===== ");
		noticeService.insertNoticeList(params);
		System.out.println("==== Write2 ===== ");

		//model.addObject("dsTable", list);
		
		//model.setViewName("/notice/noticeDetail");
		return model;
	}	
}
