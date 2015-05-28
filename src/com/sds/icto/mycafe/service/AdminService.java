package com.sds.icto.mycafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mycafe.domain.MemberVo;
import com.sds.icto.mycafe.repository.MemberDao;


@Service
public class AdminService {
	@Autowired
	MemberDao memberDao;
	
	public List<MemberVo> list(){
		return memberDao.fetch(); 
	}
	
	public MemberVo find(int no)
	{
		return memberDao.find(no);
	}
		
	public void update(MemberVo vo)
	{
		memberDao.editMember2(vo);
	}
	public void delete(int no)
	{
		memberDao.DeleteMember(no);
	}
	public int total(){
		return memberDao.total();
	}
}
