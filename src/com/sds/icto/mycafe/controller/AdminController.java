package com.sds.icto.mycafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.mycafe.domain.MemberVo;
import com.sds.icto.mycafe.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/index")
	public String index(Model model)
	{
		List<MemberVo> list = adminService.list();
		model.addAttribute("list",list);
		int tot=adminService.total();
		model.addAttribute("sum",tot);
		return "admin/list";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.GET )
	public String edit(@RequestParam int no, Model model)
	{
		MemberVo vo = adminService.find(no);
		model.addAttribute("edit", vo);
		return "admin/modify";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST )
	public String edit(@RequestParam int no, @ModelAttribute MemberVo vo)
	{
		vo.setNo(no);
		System.out.println(vo.toString());
		adminService.update(vo);
		return "redirect:/admin/index";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET )
	public String delete(@RequestParam int no)
	{
		adminService.delete(no);
		return "redirect:/admin/index";
	}
	
	
}
