package com.dj.demo.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dj.demo.model.Pic;
import com.dj.demo.service.PicService;

@Controller
public class PictureAction {

	@Autowired
	private PicService picService;
	
	@RequestMapping("/to_index")
	public String to_index(HttpServletRequest model)
	{
		List<Pic> pics = picService.getPics();
		model.setAttribute("pics", pics);
		return "index";
	}
	
	@RequestMapping("/to_login")
	public String to_login(HttpServletRequest model)
	{
		model.setAttribute("aa",123);
		return "login";
	}
}
