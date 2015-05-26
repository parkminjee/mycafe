package com.sds.icto.mycafe.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mycafe.domain.MenuVo;
import com.sds.icto.mycafe.domain.OrderVo;

@Repository
public class OrderDao {
	
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
		
	public List<OrderVo> fetch() 
	{
		List<OrderVo> list = new ArrayList<OrderVo>();
		list = sqlMapClientTemplate.queryForList("order.list");
		return list;
	}
	public OrderVo view(int no) 
	{
		OrderVo vo = (OrderVo)sqlMapClientTemplate.queryForObject("order.view",no);
		return vo;
	}
	public void refresh()
	{
		sqlMapClientTemplate.update("order.refresh");
	}
	
	public void plus(OrderVo vo)
	{
		sqlMapClientTemplate.update("order.plus",vo);
	}
	
	public void minus(OrderVo vo)
	{
		sqlMapClientTemplate.update("order.minus",vo);
	}
	
	
}