package tdw.biz.faq.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tdw.com.mapper.ComMapper;

@Service
public class FaqService {


	@Autowired
	ComMapper comMapper;
	private static final String SQL_PREFIX = "tdw.biz.FaqMapper.";

	
	/**
	 * 게시판 목록 조회
	 * @param param
	 * @return
	 */
	public List<Map<String, Object>> selectBoardList(Map<String,Object> param) throws Exception{
		return comMapper.selectList(this.SQL_PREFIX + "selectFaqList", param);
	
	}

}
