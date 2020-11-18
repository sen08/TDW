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

	/*
	 * 공지사항 목록조회 페이지
	 * 
	 * */
	@RequestMapping("/notice/noticeList")	//url에 이 주소입력하셈
	public ModelAndView main(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {

		System.out.println("==== param ===== "+params);
		String gubun = (String) params.get("gubun");
		
		if(gubun.equals("2")) {	//글쓰기
			System.out.println("==== Writed ===== ");
			noticeService.insertNoticeList(params);
		}else if(gubun.equals("3")) { //수정
			System.out.println("==== Updated ===== ");
			noticeService.updateNoticeList(params);
		}
			List<Map<String, Object>> list = noticeService.selectNoticeList(params);
			System.out.println("==== return list ===== "+list);
			model.addObject("dsTable", list);
		model.setViewName("/notice/noticeList");
		return model;
	}	

	/*
	 * 공지사항 작성 페이지
	 * 
	 * */
	@RequestMapping("/notice/noticeWrite")	//url에 이 주소입력하셈
	public ModelAndView noticeWritePage(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
		
		String writeGubun = (String) params.get("writeGubun");
		if (writeGubun.equals("write")) {		
			//작성
			System.out.println("==== write ====");
			model.setViewName("/notice/noticeWrite");
		}else {
			//수정
			List<Map<String, Object>> list = noticeService.selectNoticeDetail(params);
			
			System.out.println("==== update ====");

			model.addObject("dsTable", list);
			
			model.setViewName("/notice/noticeWrite");
		}
		return model;
	}	

	/*
	 * 공지사항 상세보기 페이지
	 * 
	 * */
	@RequestMapping("/notice/noticeDetail")	//url에 이 주소입력하셈
	public ModelAndView noticeDetailPage(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {

		//조회수 증가
		noticeService.updateNoticeHits(params);
		
		List<Map<String, Object>> list = noticeService.selectNoticeDetail(params);
		System.out.println("==== Detail ===== "+list);
		
		model.addObject("dsTable", list);
		
		model.setViewName("/notice/noticeDetail");
		return model;
	}	

	/*
	 * 공지사항 삭제
	 * 
	 * */
	@RequestMapping("/notice/deleteNotice")	//url에 이 주소입력하셈
	public ModelAndView deleteNotice(ModelAndView model, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
		
		System.out.println("==== delete ====");
		
		//삭제
		noticeService.deleteNotice(params);
		

		List<Map<String, Object>> list = noticeService.selectNoticeList(params);
		System.out.println("==== return list ===== "+list);
		model.addObject("dsTable", list);
		model.setViewName("/notice/noticeList");
		return model;
	}	

}
