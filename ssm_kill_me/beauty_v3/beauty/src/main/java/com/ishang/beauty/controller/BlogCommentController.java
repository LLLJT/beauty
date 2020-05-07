package com.ishang.beauty.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ishang.beauty.entity.BlogComment;
import com.ishang.beauty.service.BlogCommentService;

@Controller    
@RequestMapping("/comment") 
public class BlogCommentController {
	
	@Autowired
	private BlogCommentService service;
	
	@ResponseBody
	@RequestMapping(value = "/normal/add",method = RequestMethod.POST)
	public String addncmt(@RequestParam("userid") String str_userid, 
			@RequestParam("blogid") String str_blogid, @RequestParam("comment") String str_comment) {
		
		BlogComment record= new BlogComment();
		// 从前端get
		record.setBlogid(str_blogid);
		record.setUserid(str_userid);
		record.setComment(str_comment);
		//后端赋值
		record.setCreatetime(new Date());
		record.setLikenum(0);
		record.setDelFlag(true);
		
		System.out.println(record);
		int rst =service.addone(record);
		if(rst==1) {
			return "101";
		}else {
			return "100";
		}
	}
}
