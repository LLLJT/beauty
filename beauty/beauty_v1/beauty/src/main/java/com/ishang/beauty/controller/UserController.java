package com.ishang.beauty.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.UserService;

@Controller    
@RequestMapping("/user") 
public class UserController {

	@Autowired
	private UserService service;
	
//	@GetMapping("/getAll")
//	public  DataResponse getAll() {
//		DataResponse response = new DataResponse();
//		List<User> result = service.findall();
//		return response.success(result);
//	}
	
	@RequestMapping("/userList")    
    public ModelAndView findall(@RequestParam(value="pn",defaultValue = "1")Integer pn,Model model){
		//第pn页显示五行数据
		PageHelper.startPage(pn,5);
        List<User> uList = service.findall();    
        PageInfo<User> page=new PageInfo<User>(uList, 5);
		/*测试page中的参数
		 * System.out.println("页码数:"+page.getPageNum());
		 * System.out.println("总页码:"+page.getPages());
		 * System.out.println("总条数:"+page.getTotal());
		 * System.out.println(page.getNavigatePages());
		 *
		 *
		 * for(User u : list) {
		 * System.out.println("id:"+u.getId()+"name:"+u.getUsername());
		 * 
		 * }
		 */
		/*
		 * int []num=page.getNavigatepageNums(); for(int i:num) {
		 * 
		 * System.out.println(" "+i); } for(User u : list) {
		 * System.out.println("id:"+u.getId()+"name:"+u.getUsername());
		 * 
		 * }
		 */
       
        ModelAndView mv=new ModelAndView("backuserList");
        mv.addObject("pageInfo", page);
        return mv;
    }

	@RequestMapping("/login")
	public  String  login(@RequestParam("username") String username, @RequestParam("password") String password,Model model) {
		User record = new User();
		record.setUsername(username);
		record.setPassword(password);
		List<User> result =service.findbyentity(record);
		if ( result.size()>0 && result.get(0).getPassword().equals(password)	)  {
			return "index";
		}else {
			 return "login";
		}
	}
	
	// TODO 完整填写前端参数  处理返回值
	@RequestMapping("/add")
	public String adduser() {
		User record = new User();
		record.setDelFlag(true);
		int r = service.addone(record);
		return "";
	}
	
}
