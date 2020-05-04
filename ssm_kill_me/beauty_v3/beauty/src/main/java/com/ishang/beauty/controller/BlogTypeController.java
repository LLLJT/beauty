package com.ishang.beauty.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ishang.beauty.entity.BlogType;
import com.ishang.beauty.service.BlogTypeService;

@Controller    
@RequestMapping("/blog/type") 
public class BlogTypeController {
	
	@Autowired
	private BlogTypeService service;
	
	@RequestMapping("/getall")    
    public String findall(HttpServletRequest request,Model model){    
        List<BlogType> rstlist = service.findall();    
        model.addAttribute("typelist", rstlist);    
        return "typelist";    
    }
}
