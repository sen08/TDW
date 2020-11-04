package tdw.biz.notice.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tdw.com.mapper.ComMapper;

@Service
public class NoticeService {

	@Autowired
	ComMapper comMapper;
	private static final String SQL_PREFIX = "tdw.biz.NoticeMapper";

	/*	
	 * 게시판 목록 조회
	 * 
	 * @param param
	 * @return
	 */
	public List<Map<String, Object>> selectNoticeList(Map<String,Object> param) throws Exception{
		return comMapper.selectList(this.SQL_PREFIX + ".selectBoardList", param);
	
	}
	
	/*	
	 * 게시판 상세 조회
	 * 
	 * @param param
	 * @return
	 */
	public List<Map<String, Object>> selectNoticeDetail(Map<String,Object> param) throws Exception{
		return comMapper.selectList(this.SQL_PREFIX + ".selectBoardDetail", param);
	
	}

	/*	
	 * 공지사항 입력
	 * 
	 * @param param
	 * @return
	 */
	public int insertNoticeList(Map<String,Object> param) throws Exception{
		System.out.println("@@@@@@"+param);
		return comMapper.insert(this.SQL_PREFIX + ".insertNoticeBoard", param);
	
	}
}
