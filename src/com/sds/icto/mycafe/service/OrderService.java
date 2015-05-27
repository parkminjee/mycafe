package com.sds.icto.mycafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mycafe.domain.MenuVo;
import com.sds.icto.mycafe.domain.OrderVo;
import com.sds.icto.mycafe.repository.OrderDao;


@Service
public class OrderService {
	@Autowired
	OrderDao orderDao;
	
	public List<OrderVo> list(){
		return orderDao.fetch(); 
	}
	
	public void refresh()
	{
		orderDao.refresh();
	}
	
	public OrderVo view(int no)
	{
		return orderDao.view(no);
	}
	
	public void plus(OrderVo vo)
	{
		orderDao.plus(vo);
	}
	public void minus(OrderVo vo)
	{
		orderDao.minus(vo);
	}
	public int total()
	{
		return orderDao.total();
	}
	
}
