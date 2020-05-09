package com.ishang.beauty.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.ishang.beauty.entity.Blog;
import com.ishang.beauty.entity.BlogComment;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.entity.WholeComment;
import com.ishang.beauty.service.BlogCommentService;
import com.ishang.beauty.service.BlogService;
import com.ishang.beauty.service.UserService;

@Controller    
//@RequestMapping("/blog") 
public class BlogController {

	@Autowired
	private BlogService service;
	
	@Autowired
	private UserService userservice;
	@Autowired
	private BlogCommentService cmtservice;
		
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
	public String searchblog(HttpServletRequest request,Model model) throws UnsupportedEncodingException{    
		request.setCharacterEncoding("UTF-8");
		String searchname=request.getParameter("searchname");
//		System.out.println(searchname);
		Blog record=new Blog();
		record.setTitle(searchname);
		List<Blog> rstlist= service.findbyentity(record);
		model.addAttribute("searchresult", rstlist);
		return "searchresult.jsp";
	}
	
	@RequestMapping("/content")
	public String blogcontent(HttpServletRequest request,Model model) {
		int blogid=1;
		String bid=request.getParameter("blogid");
		if( bid ==null || bid.isEmpty()) bid="1";
		else blogid=Integer.parseInt(bid);
		
		// blog ＆ writer
		Blog blog =service.findbyid(blogid);
		String writer = userservice.findbyid(blogid).getUsername();
		model.addAttribute("thisblog", blog);
		model.addAttribute("writer", writer);
		
//		int n_cmt=service.getnum(blogid, "cmt");
		int n_star=service.getnum(blogid, "star");
		model.addAttribute("starnum", n_star);

		WholeComment wholecmt=cmtservice.getwholecomment(blogid);
		model.addAttribute("cmtnum", wholecmt.getCmtnum());
		model.addAttribute("normalcmt", wholecmt.getNormalcmt());
		model.addAttribute("replymap", wholecmt.getReplymap());	
		model.addAttribute("cmtermap", wholecmt.getCmtermap());
		
		return "content.jsp?blogid="+bid;
	}

	@ResponseBody
	@RequestMapping(value = "/newsearch",method = RequestMethod.POST)
	public Map newsearchblog(@RequestParam("keyword") String keyword) {
		System.out.println(keyword);
		Blog record=new Blog();
		record.setTitle(keyword);
		List<Blog> rstlist= service.findbyentity(record);
		Map<String, List<Blog>> map = new HashMap<String, List<Blog>>();
		if(rstlist.size()>0) {
			System.out.println("succeed");
			map.put("rstlist", rstlist);
		}else {
			System.out.println("failed");
		}
		return map;
	}
	
	// TODO content.jsp add star
	// TODO add entry for content
}
