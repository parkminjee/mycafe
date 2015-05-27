package com.sds.icto.mycafe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.mycafe.domain.BoardVo;
import com.sds.icto.mycafe.domain.MemberVo;
import com.sds.icto.mycafe.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;

	@RequestMapping("/list")
	public String index(Model model) {
		List<BoardVo> list = boardService.list();
		model.addAttribute("list", list);
		return "board/list";
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(@RequestParam int no, Model model) {
		BoardVo boardVo = boardService.view(no);
		model.addAttribute("view", boardVo);
		boardService.viewcnt(boardVo);
		return "board/view";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String writeform(@ModelAttribute BoardVo vo) {
		return "board/write";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute BoardVo vo, HttpSession session) {
		MemberVo mvo = (MemberVo)session.getAttribute("authMember");
		vo.setMember_no(mvo.getNo());
		vo.setMember_name(mvo.getName());
		boardService.insert(vo);
		return "redirect:/board/list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@ModelAttribute BoardVo vo, @RequestParam int no,
			HttpSession session) {
		boardService.delete(vo);
		return "redirect:/board/list";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String updateform(@RequestParam int no, Model model) {
		BoardVo boardVo = boardService.view(no);
		model.addAttribute("modify", boardVo);
		return "board/modify";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String update(@ModelAttribute BoardVo vo) {

		boardService.update(vo);
		return "redirect:/board/list";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@RequestParam String kwd, Model model) {
		List<BoardVo> list = boardService.search(kwd);
		model.addAttribute("list", list);
		return "board/list";
	}
}
