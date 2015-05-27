package com.sds.icto.mycafe.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sds.icto.mycafe.domain.BoardVo;
import com.sds.icto.mycafe.domain.MemberVo;
import com.sds.icto.mycafe.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinForm() {
		return "member/joinform";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(@ModelAttribute MemberVo vo) {
		memberService.joinUser(vo);
		return "redirect:/index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "member/loginform";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute MemberVo vo, HttpSession session) {
		MemberVo memberVo = memberService.authUser(vo);

		// 로그인 실패
		if (memberVo == null) {
			return "redirect:/member/login?result=fail";
		}

		// 로그인 성공
		session.setAttribute("authMember", memberVo);
		return "redirect:/index";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("authMember");
		session.invalidate();
		return "redirect:/index";
	}
	
	@RequestMapping(value="/uinfo", method = RequestMethod.GET)
	public String uinfoForm(){
		return "member/uinfoform";
	}
	
	@RequestMapping(value="/uinfo", method = RequestMethod.POST)
	public String uinfo(@ModelAttribute MemberVo vo,HttpSession session){
		memberService.updateUser(vo);
		logout(session);
		return "redirect:/index";
	}
	
	@RequestMapping("/checkEmail")
	@ResponseBody
	public Object checkEmail(String email) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(memberService.checkEmail(email)) {
			map.put("result", true );
			map.put("data", "이미 사용 중인 Email입니다." );
		} else  {
			map.put("result", false );
			map.put("data", "Email을 사용할 수 있습니다." );	
		}
		
		return map;
	}



	
}