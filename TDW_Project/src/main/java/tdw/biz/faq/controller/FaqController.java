package tdw.biz.faq.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tdw.biz.faq.service.FaqService;


@Controller
public class FaqController {

	@Autowired
	FaqService faqService;

	@RequestMapping("/faq/list")
	public ModelAndView main(ModelAndView v, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
		
		List<Map<String, Object>> listSample = faqService.selectBoardList(params);
		v.addObject("faqlist", listSample);
		v.setViewName("/faq/faqList");
		return v;
	}

}
