package tdw.biz.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tdw.com.mapper.ComMapper;

@Service
@Transactional
public class BoardListService {

	@Autowired
	ComMapper comMapper;
	private static final String SQL_PREFIX = "tdw.biz.mapper.BoardListMapper.";

	
	/**
	 * 게시판 목록 조회
	 * @param param
	 * @return
	 */
	public List<Map<String, Object>> selectBoardList(Map<String,Object> param) throws Exception{
		return comMapper.selectList(this.SQL_PREFIX + "selectBoardList", param);
	
	}
	
}
