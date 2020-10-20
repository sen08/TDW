package tdw.biz.review.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tdw.biz.review.service.ReviewListService;

@Controller
public class ReviewListController {

	@Autowired
	ReviewListService reviewListService;


	@RequestMapping("/review/list")
	public ModelAndView selectBoardList(@RequestParam Map<String, Object> params, ModelAndView model) throws Exception {
		return model;

		//return model.addObject("", reviewListService.selectBoardList(params));
	}

}
