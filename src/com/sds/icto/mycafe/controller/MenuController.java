package com.sds.icto.mycafe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@RequestMapping("/list")
	public String index()
	{
		return "menu/list";
	}
	@RequestMapping("/insert")
	public String insert()
	{
		return "";
	}
	

}
