package tdw.com.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ComMapper {
	
	@Autowired
	SqlSession sqlsession;
	
	public Map<String,Object> selectOne(String id, Map<String,Object> paramMap) throws Exception{
		return sqlsession.selectOne(id, paramMap);
		
	}
	
	public List<Map<String,Object>> selectList(String id, Map<String,Object> paramMap) throws Exception{
		return sqlsession.selectList(id, paramMap);
		
	}
	
	public int insert(String id, Map<String,Object> paramMap) throws Exception{
		return sqlsession.insert(id, paramMap);
		
	}
	
	public int update(String id, Map<String,Object> paramMap) throws Exception{
		return sqlsession.update(id, paramMap);
		
	}
	
	public int delete(String id, Map<String,Object> paramMap) throws Exception{
		return sqlsession.delete(id, paramMap);
		
	}
	
	

}
