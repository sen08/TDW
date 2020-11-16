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
	 * 게시판 조회수 증가
	 * 
	 * @param param
	 * @return
	 */
	public List<Map<String, Object>> updateNoticeHits(Map<String,Object> param) throws Exception{
		return comMapper.selectList(this.SQL_PREFIX + ".updateNoticeHits", param);
	
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
		return comMapper.update(this.SQL_PREFIX + ".insertNoticeBoard", param);
	
	}
	
	/*	
	 * 공지사항 삭제
	 * 
	 * @param param
	 * @return
	 */
	public int deleteNotice(Map<String,Object> param) throws Exception{
		System.out.println("1111111");
		return comMapper.delete(this.SQL_PREFIX + ".deleteNotice", param);
	}
}
