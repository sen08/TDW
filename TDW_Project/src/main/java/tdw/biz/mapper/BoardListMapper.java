package tdw.biz.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardListMapper {

	public List<Map<String, Object>> selectBoardList (String mapper, Map<String,Object> paramMap) throws Exception;
}
