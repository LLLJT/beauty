package com.ishang.beauty.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.ishang.beauty.entity.Blog;
import com.ishang.beauty.entity.BlogStar;
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
	
	@RequestMapping("/indexjsp")
	public String loadindex(HttpServletRequest request,Model model){    
		// 1、获取关注up主的最近更新（一周内）的up主列表 dtype: List<User>
		int userid=2; // 测试数据：2
		if(request.getParameter("userid")!="")userid=Integer.parseInt(request.getParameter("userid"));
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
		User writer = userservice.findbyid(blog.getUserid()).get(0);
		model.addAttribute("thisblog", blog);
		model.addAttribute("writer", writer);

		int n_star=service.getnum(blogid, "star");
		model.addAttribute("starnum", n_star);
		BlogStar test = new BlogStar();
		test.setBlogid(blogid);
		
		WholeComment wholecmt=cmtservice.getwholecomment(blogid);
		model.addAttribute("cmtnum", wholecmt.getCmtnum());
		model.addAttribute("normalcmt", wholecmt.getNormalcmt());
		model.addAttribute("replymap", wholecmt.getReplymap());	
		model.addAttribute("cmtermap", wholecmt.getCmtermap());
		
		return "content.jsp?blogid="+bid;
	}

	@ResponseBody
	@RequestMapping(value = "/newsearch",method = RequestMethod.POST)
	public Map<String, List<Blog>> newsearchblog(@RequestParam("keyword") String keyword) {
		System.out.println(keyword);
		Blog record=new Blog();
		record.setTitle(keyword);
		List<Blog> rstlist= service.findbyentity(record);
		Map<String, List<Blog>> map = new HashMap<String, List<Blog>>();
		if(rstlist.size()>0) {
			System.out.println("succeed");
			map.put("rstlist", rstlist);
		}
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/side/getrec",method = RequestMethod.GET)
    public Map<String, List<Blog>> recside(){    
		Map<String, List<Blog>> map = new HashMap<String, List<Blog>>();
		List<Blog> reclist=service.findbyentity(0, "rec", true); //不需要userid
		map.put("rstlist", reclist);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/side/getupdate",method = RequestMethod.GET)
    public Map<String, List<Blog>> updateside(@RequestParam("userid") String str_userid){    
		Map<String, List<Blog>> map = new HashMap<String, List<Blog>>();
		int userid=21 ;
		if( !(str_userid ==null || str_userid.isEmpty())) userid=Integer.parseInt(str_userid);
		List<Blog> updatelist=service.selectlatestblog(userid);
		map.put("rstlist", updatelist);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/blog/getuserstar",method = RequestMethod.POST)
	public Map<String, Object> getuserstar(@RequestParam("userid") String str_userid){
		Map<String,Object> map = new HashMap<String, Object>();
		int userid=21 ;
		if( !(str_userid ==null || str_userid.isEmpty())) userid=Integer.parseInt(str_userid);
		map.put("rstmap", service.selectstarmap(userid));
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/blog/addstar",method = RequestMethod.POST)
	public String addstar(@RequestParam("userid") String str_userid,@RequestParam("blogid") String str_blogid) {
		
		int userid=21 ;
		if( !(str_userid ==null || str_userid.isEmpty())) userid=Integer.parseInt(str_userid);
		int blogid=1;
		if( !(str_blogid ==null || str_blogid.isEmpty())) blogid=Integer.parseInt(str_blogid);
		
		BlogStar record = new BlogStar();
		record.setUserid(userid);
		record.setBlogid(blogid);
		record.setCreatetime(new Date());
		service.starblog(record);
		
		int num = service.getnum(blogid, "star");
		return String.valueOf(num);
	}

	@ResponseBody
	@RequestMapping(value = "/blog/undostar",method = RequestMethod.POST)
	public String undostar(@RequestParam("userid") String str_userid,@RequestParam("blogid") String str_blogid) {
		int userid=0, blogid=0,rst=0 ;
		if( !(str_userid ==null || str_userid.isEmpty())) userid=Integer.parseInt(str_userid);
		if( !(str_blogid ==null || str_blogid.isEmpty())) blogid=Integer.parseInt(str_blogid);
		if(userid*blogid > 0) {
			rst=service.undostar(userid, blogid);
		}
		
		return String.valueOf(rst);
	}

	@ResponseBody
	@RequestMapping(value = "/blog/findstar",method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	public String findstar(@RequestParam("userid") String str_userid,@RequestParam("blogid") String str_blogid) {
		int userid=0, blogid=0,rst=0 ;
		if( !(str_userid ==null || str_userid.isEmpty())) userid=Integer.parseInt(str_userid);
		if( !(str_blogid ==null || str_blogid.isEmpty())) blogid=Integer.parseInt(str_blogid);
		if(userid*blogid > 0) {
			BlogStar test = new BlogStar();
			test.setUserid(userid);
			test.setBlogid(blogid);
			rst=service.findstarbyentity(test).size();
			if(rst>0) return "取消收藏";
			else return  "添加收藏";
		}
		return "";
	}
	
	@RequestMapping("/index")
	public String toindex(@CookieValue(value = "user", required = false) String testCookie) {
		System.out.println(testCookie);
		if(testCookie==null) return "index.jsp";
		String[] strarr=testCookie.split("#");
		String str_id=strarr[2];
		System.out.println(str_id);
		if((str_id=="" || str_id.isEmpty()) ) str_id="1";
		return ("../indexjsp?userid="+str_id);
	}
	
	@ResponseBody
	@RequestMapping(value = "/getupblog",method = RequestMethod.GET)
	public Map getupblog(@RequestParam("upid") String str_up) {
		Map<String, Object> map = new HashMap<String, Object>();
		int upid=21;
		if(str_up!=""||str_up!=null) upid=Integer.parseInt(str_up);
		List<Blog> list=service.findbyentity(upid, "hot", true);
		if(list.size()>0) {
			Blog firstblog=list.get(0);
			int heart=service.getnum(firstblog.getId(), "star");
			int comment=service.getnum(firstblog.getId(), "cmt");
			map.put("rstblog", firstblog);
			map.put("n_star", heart);
			map.put("n_cmt",comment);
		}
		return map;
	}
		
	
	
	@ResponseBody
	@RequestMapping(value = "/switchorder",method = RequestMethod.GET)
	public Map<String, Object> switchupblog(@RequestParam("upid") String str_up, @RequestParam("keyword") String keyword, @RequestParam("order") String str_order) {
		
		Map<String,Object> map = new HashMap<String, Object>();
		List<Blog> rstlist = new ArrayList<Blog>();
		
		int upid=21;
		if(str_up!=""||str_up!=null) upid=Integer.parseInt(str_up);
		
		Boolean order=true;  // desc: true; asc: false
		if(str_order.equals("false")) order=false;
		
		//keyword: "time" or "star"
		if(keyword.equals("time")) {
			rstlist=service.findbyentity(upid, keyword, order);
		}else {
			rstlist=service.findbyentity(upid, "hot", order);
		}
		
		int n = rstlist.size();
		int[] starnum = new int[n];
		int[] cmtnum = new int[n];
		for(int i=0; i<n; i++) {
			int id = rstlist.get(i).getId();
			starnum[i]=service.getnum(id, "star");
			cmtnum[i]=service.getnum(id, "cmt");
		}
				
		map.put("rstlist", rstlist);
		map.put("stararr", starnum);
		map.put("cmtarr", cmtnum);
		
		return map;
	}
	
}
