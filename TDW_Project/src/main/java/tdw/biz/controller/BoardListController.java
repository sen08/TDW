package tdw.biz.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tdw.biz.service.BoardListService;

@Controller
public class BoardListController {

	@Autowired
	BoardListService boardListService;

	@RequestMapping("/index")
	public ModelAndView main(ModelAndView v, @RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
		
		List<Map<String, Object>> listSample = boardListService.selectBoardList(params);
		System.out.println("==== return list ===== " + listSample);
		v.setViewName("index");
		return v;
	}

	/*@RequestMapping("/biz/boardList")
	public ModelAndView selectBoardList(@RequestParam Map<String, Object> params, ModelAndView model) {

		return model.addObject("", boardListService.selectBoardList(params));
	}*/

}
