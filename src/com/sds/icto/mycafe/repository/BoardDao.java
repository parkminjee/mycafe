package com.sds.icto.mycafe.repository;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mycafe.domain.BoardVo;
import com.sds.icto.mycafe.domain.MemberVo;

@Repository
public class BoardDao {
	
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
		
	public BoardVo getView( int no ) 
	{
		BoardVo vo1 = new BoardVo();
		vo1 = (BoardVo) sqlMapClientTemplate.queryForObject("board.view",no);
		return vo1;
	}
	
	public void update ( BoardVo vo)
	{
		sqlMapClientTemplate.update("board.update",vo);
	}

	
	public void delete(BoardVo vo)
	{
		sqlMapClientTemplate.delete("board.delete",vo);
	}
	
	public List<BoardVo> fetchList(){
		List<BoardVo> list = sqlMapClientTemplate.queryForList("board.list");		
		return list;
	}
	
	public List<BoardVo> fetchkey(String kwd) 
	{
		kwd = "%"+kwd+"%";
		List<BoardVo> list = sqlMapClientTemplate.queryForList("board.find",kwd);
		return list;
	}

	public void insert ( BoardVo vo)
	{
		sqlMapClientTemplate.insert("board.write",vo);
	}
	
	public void cntupdate(BoardVo vo)
	{
		sqlMapClientTemplate.update("board.updatecnt",vo);
	}

}
