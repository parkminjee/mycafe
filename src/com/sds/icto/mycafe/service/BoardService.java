package com.sds.icto.mycafe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mycafe.domain.BoardVo;
import com.sds.icto.mycafe.repository.BoardDao;

@Service
public class BoardService {
	
	@Autowired
	BoardDao boardDao;
	
	
}
