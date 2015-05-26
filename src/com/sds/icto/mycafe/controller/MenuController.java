package com.sds.icto.mycafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.mycafe.domain.MenuVo;
import com.sds.icto.mycafe.service.MenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	MenuService menuService;
	
	@RequestMapping("/index")
	public String index(Model model)
	{
		List<MenuVo> list = menuService.list();
		model.addAttribute("list",list);
		return "menu/list";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String writeForm()
	{
		return "menu/write";
	}
	
	/*@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(@ModelAttribute MenuVo vo)
	{
		menuService.insert(vo);
		return "redirect:/menu/index";
	}	*/
	

}
