package com.sds.icto.mycafe.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sds.icto.mycafe.domain.MenuVo;
import com.sds.icto.mycafe.domain.OrderVo;
import com.sds.icto.mycafe.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping("/index")
	public String index(Model model)
	{
		List<OrderVo> list = orderService.list();
		model.addAttribute("list",list);
		return "order/list";
	}
	@RequestMapping("/refresh")
	public String refresh()
	{
		orderService.refresh();
		return "redirect:/order/index";
	}
	@RequestMapping("/buy")
	public String buy()
	{
		orderService.refresh();
		return "redirect:/order/index";
	}
	
	@RequestMapping(value="/plus", method=RequestMethod.GET)
	public String plus(@RequestParam int no, Model model)
	{
		System.out.println(no);
		OrderVo vo = orderService.view(no);
		orderService.plus(vo);
					
		return "redirect:/order/index";
	}
	@RequestMapping(value="/minus", method=RequestMethod.GET)
	public String minus(@RequestParam int no, Model model)
	{
		System.out.println(no);
		OrderVo vo = orderService.view(no);
		orderService.minus(vo);
			
		return "redirect:/order/index";
	}	
	
	
}
