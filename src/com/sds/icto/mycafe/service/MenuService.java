package com.sds.icto.mycafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mycafe.domain.MenuVo;
import com.sds.icto.mycafe.repository.MenuDao;

@Service
public class MenuService {
	@Autowired
	MenuDao menuDao;
	
	public List<MenuVo> list(){
		return menuDao.fetch(); 
	}
	public MenuVo view(int no)
	{
		return menuDao.getView(no);
	}
	public void insert(MenuVo vo)
	{
		menuDao.insert(vo);
	}
	public void delete(MenuVo vo)
	{
		menuDao.delete(vo);
	}
	public void update(MenuVo vo)
	{
		menuDao.update(vo);
	}
	
}
