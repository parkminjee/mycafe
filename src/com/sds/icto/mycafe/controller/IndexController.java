package com.sds.icto.mycafe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {
	@RequestMapping("/index")
	public String index()
	{
		return "main/index";
	}
}
