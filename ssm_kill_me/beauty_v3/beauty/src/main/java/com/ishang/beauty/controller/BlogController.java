package com.ishang.beauty.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.ishang.beauty.entity.Blog;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.BlogService;

@Controller    
//@RequestMapping("/blog") 
public class BlogController {

	@Autowired
	private BlogService service;
	
	@RequestMapping("/blog/getall")    
    public String findall(HttpServletRequest request,Model model){    
		List<Blog> rstlist=service.findall();
		model.addAttribute("bloglist", rstlist);
		return "crud/blogTestList.jsp";
	}
	
	@RequestMapping("/blog/getrec")    
    public String findrec(HttpServletRequest request,Model model){    
		List<Blog> rstlist=service.findbyentity(3, "rec", true);
		model.addAttribute("bloglist", rstlist);
		return "crud/blogTestList.jsp";
	}
	
	@RequestMapping("/index")
	public String loadindex(HttpServletRequest request,Model model){    
		// TODO 1、获取关注up主的最近更新（一周内）的up主列表 dtype: List<User>
		int userid=2; //测试数据：2
		// 从cookie获取当前登录的userid
		List<User> updateuplist=service.selectlatestup(userid);
		model.addAttribute("updateuplist", updateuplist);
//		List<Blog> updatelist=service.selectlatestblog(userid);
//		model.addAttribute("updatelist", updatelist);
		Map<Integer, List<Blog>> map=new HashMap<Integer, List<Blog>>();
		for (User u: updateuplist) {
			List<Blog> value=service.selectlatestblog(u.getId());
			map.put(u.getId(), value);
		}
		String json=JSONObject.toJSONString(map);
		JSONObject jsonMap = JSONObject.parseObject(json);
		model.addAttribute("updatemap", jsonMap);
		
		//2、获取推荐
		List<Blog> reclist=service.findbyentity(0, "rec", true);
		model.addAttribute("reclist", reclist);
		
		return "index.jsp";
	}
	
	@RequestMapping("/search")
	public String searchblog(HttpServletRequest request,Model model){    
		String searchname=(String) request.getParameter("searchname");
//		System.out.println(searchname);
		Blog record=new Blog();
		record.setTitle(searchname);
		List<Blog> rstlist= service.findbyentity(record);
		model.addAttribute("searchresult", rstlist);
		return "searchresult.jsp";
	}
	
}
