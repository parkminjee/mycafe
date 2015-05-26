package com.sds.icto.mycafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mycafe.domain.BoardVo;
import com.sds.icto.mycafe.repository.BoardDao;

@Service
public class BoardService {

	@Autowired
	BoardDao boardDao;

	public List<BoardVo> list() {

		return boardDao.fetchList();
	}
	
	public void viewcnt(BoardVo vo){
		boardDao.cntupdate(vo);
	}

	public BoardVo view(int no) {

		return boardDao.getView(no);
	}

	public void insert(BoardVo vo) {
		boardDao.insert(vo);
	}

	public void delete(BoardVo vo) {
		boardDao.delete(vo);
	}

	public void update(BoardVo vo) {
		boardDao.update(vo);
	}

	public void updatecnt(BoardVo vo) {
		boardDao.cntupdate(vo);
	}

	public List<BoardVo> search(String kwd) {
		return boardDao.fetchkey(kwd);
	}
}
