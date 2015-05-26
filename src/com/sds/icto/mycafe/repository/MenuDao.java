package com.sds.icto.mycafe.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mycafe.domain.MenuVo;

@Repository
public class MenuDao {
	
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
		
/*	public MenuVo getView( int no ) 
	{
		MenuVo vo1 = new MenuVo();
		vo1 = (MenuVo) sqlMapClientTemplate.queryForObject("menu.view",no);
						
		return vo1;
	}*/
	
	public void update ( MenuVo vo)
	{
		sqlMapClientTemplate.update("menu.update",vo);
	}
	
	public void delete(MenuVo vo)
	{
		sqlMapClientTemplate.delete("menu.delete",vo);
	}
	
	public List<MenuVo> fetch() 
	{
		List<MenuVo> list = new ArrayList<MenuVo>();
		list = sqlMapClientTemplate.queryForList("menu.list");
		return list;
	}
	
	public MenuVo view(int no) 
	{
		MenuVo vo = (MenuVo)sqlMapClientTemplate.queryForObject("menu.view",no);
		return vo;
	}
	
	public void insert ( MenuVo vo)
	{
		sqlMapClientTemplate.insert("menu.insert",vo);
	}
	
	

	
}
