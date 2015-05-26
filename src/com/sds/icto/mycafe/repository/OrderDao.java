package com.sds.icto.mycafe.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mycafe.domain.OrderVo;

@Repository
public class OrderDao {
	
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
		
	public List<OrderVo> fetch() 
	{
		List<OrderVo> list = new ArrayList<OrderVo>();
		list = sqlMapClientTemplate.queryForList("menu.list");
		return list;
	}
	
}