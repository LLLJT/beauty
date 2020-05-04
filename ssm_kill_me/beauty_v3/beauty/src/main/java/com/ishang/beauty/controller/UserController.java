package com.ishang.beauty.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/getall")    
    public String findall(HttpServletRequest request,Model model){    
        List<User> uList = service.findall();    
        String url=request.getRequestURI();
        System.out.println(url);
        model.addAttribute("userlist", uList);    
        return "crud/userList.jsp";     //跳转到userList.jsp
    }

	@RequestMapping("/login")
	public  String  login(@RequestParam("username") String username, @RequestParam("password") String password,Model model) {
		User record = new User();
		record.setUsername(username);
		record.setPassword(password);
		List<User> result =service.findbyentity(record);
		if ( result.size()>0 && result.get(0).getPassword().equals(password)	)  {
			return "../index";
		}else {
			 return "login.jsp";
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
