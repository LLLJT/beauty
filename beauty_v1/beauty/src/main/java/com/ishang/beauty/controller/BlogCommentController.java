package com.ishang.beauty.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ishang.beauty.entity.BlogComment;
import com.ishang.beauty.entity.WholeComment;
import com.ishang.beauty.service.BlogCommentService;

@Controller    
@RequestMapping("/comment") 
public class BlogCommentController {
	
	@Autowired
	private BlogCommentService service;
	
	@ResponseBody
	@RequestMapping(value = "/normal/add",method = RequestMethod.POST)
	public String addncmt(@RequestParam("userid") String str_userid, @RequestParam("comment") String str_comment,
			@RequestParam("blogid") String str_blogid, @RequestParam("cmtid") String str_cmtid ) {
		
		BlogComment record= new BlogComment();
		// 从前端get
		record.setBlogid(str_blogid);
		record.setUserid(str_userid);
		record.setComment(str_comment);
		if(!(str_cmtid.equals("") || str_cmtid.isEmpty()) ) record.setCmtid(str_cmtid);
		//后端赋值
		record.setCreatetime(new Date());
		record.setLikenum(0);
		record.setDelFlag(true);
		
		System.out.println(record);
		int rst =service.addone(record);
		
//		WholeComment wholecmt=service.getwholecomment(record.getBlogid());
//		model.addAttribute("cmtnum", wholecmt.getCmtnum());
//		model.addAttribute("normalcmt", wholecmt.getNormalcmt());
//		model.addAttribute("replymap", wholecmt.getReplymap());	
//		model.addAttribute("cmtermap", wholecmt.getCmtermap());
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("cmtnum", wholecmt.getCmtnum());
//		map.put("normalcmt", wholecmt.getNormalcmt());
//		map.put("replymap", wholecmt.getReplymap());	
//		map.put("cmtermap", wholecmt.getCmtermap());
//		System.out.println(map.toString());
//		return map;
		if(rst==1) {
			return "101";
		}else {
			return "0";
		}
	}
}
