package com.sds.icto.mycafe.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mycafe.domain.BoardVo;
import com.sds.icto.mycafe.domain.MemberVo;


@Repository
public class MemberDao {

	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;

	public List<MemberVo> fetch(){
		List<MemberVo> list = sqlMapClientTemplate.queryForList("member.list");		
		return list;
	}
	
	public MemberVo find(int no){
		MemberVo vo = (MemberVo)sqlMapClientTemplate.queryForObject("member.find",no);		
		return vo;
	}
		
	public void insert(MemberVo vo) {
		sqlMapClientTemplate.insert("member.join", vo);
	}

	public MemberVo getMember(MemberVo vo) {
		MemberVo vo1 = (MemberVo)sqlMapClientTemplate.queryForObject("member.login",vo);
		return vo1;
	}
	
	public void editMember(MemberVo vo){
		sqlMapClientTemplate.update("member.update", vo);
	}
	
	public void editMember2(MemberVo vo){
		sqlMapClientTemplate.update("member.update2", vo);
	}
	
	public void DeleteMember(int no){
		sqlMapClientTemplate.delete("member.delete", no);
	}
	
	public boolean checkEmail(String email) 
	{
		MemberVo memberVo = null;
		memberVo = (MemberVo)sqlMapClientTemplate.queryForObject("member.check",email);
		if(memberVo==null){
			return false;
		}else{
			return true;
		}
	}
	
	public int total() 
	{
		int total = (Integer)sqlMapClientTemplate.queryForObject("member.total");
		return total;
	}

	
}
