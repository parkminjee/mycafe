package com.sds.icto.mycafe.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.BoardVo;
import com.sds.icto.mysite.domain.MemberVo;
import com.sds.icto.mysite.exception.BoardDaoException;

@Repository
public class BoardDao {
	
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	

	public void insert(BoardVo vo) {
		sqlMapClientTemplate.insert("board.insert",vo);
	}

	public List<BoardVo> fetchList(){
		List<BoardVo> list = sqlMapClientTemplate.queryForList("board.list");		
		return list;
	}

	public void delete(int no){
		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("n", no);
		sqlMapClientTemplate.delete("board.delete",map);
	}

	public void update(BoardVo vo) {
		sqlMapClientTemplate.update("board.update",vo);
	}
	
	public BoardVo read(int no) {
		BoardVo vo = (BoardVo)sqlMapClientTemplate.queryForObject("board.read",no);
		return vo;
	}


}
