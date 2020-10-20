package tdw.biz.notice.controller;

import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import tdw.biz.service.BoardListService;

@Controller
public class NoticeListController {

	@Autowired
	BoardListService boardListService;


}
