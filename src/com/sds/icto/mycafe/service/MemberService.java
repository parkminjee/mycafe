package com.sds.icto.mycafe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mycafe.domain.MemberVo;
import com.sds.icto.mycafe.repository.MemberDao;


@Service
public class MemberService {

		@Autowired
		MemberDao memberDao;
		
		public void joinUser(MemberVo vo){
			memberDao.insert(vo);
		}
		
		public MemberVo authUser(MemberVo vo){
			MemberVo memberVo = memberDao.getMember(vo);
			return memberVo;
		}
		
		public void updateUser(MemberVo vo){
			memberDao.editMember(vo);
		}
}
