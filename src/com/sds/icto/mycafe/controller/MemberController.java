package com.sds.icto.mycafe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member")
public class MemberController {

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginForm()
	{
		return "member/loginform";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String joinForm()
	{
		return "member/joinform";
	}
}