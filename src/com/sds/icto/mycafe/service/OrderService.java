package com.sds.icto.mycafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mycafe.domain.OrderVo;
import com.sds.icto.mycafe.repository.OrderDao;


@Service
public class OrderService {
	@Autowired
	OrderDao orderDao;
	
	public List<OrderVo> list(){
		return orderDao.fetch(); 
	}
	
}
