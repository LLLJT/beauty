package com.ishang.ssmdemo1.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ishang.ssmdemo1.entity.User;
import com.ishang.ssmdemo1.service.UserService;
import com.ishang.ssmdemo1.utils.DataResponse;


@Controller    
@RequestMapping("/user") 
public class UserController {

	@Autowired
	private UserService userService;
	
//	@GetMapping("/getAll")
//	public  DataResponse getAll() {
//		DataResponse response = new DataResponse();
//		List<User> result = service.findall();
//		return response.success(result);
//	}
	
	@RequestMapping("/userList")    
    public String userList(HttpServletRequest request,Model model){    
        List<User> uList = userService.findall();    
        model.addAttribute("uList", uList);    
        return "userList";    
    }

	@RequestMapping("/login")
	public  String  login(@RequestParam("username") String username, @RequestParam("password") String password,Model model) {
		User record = new User();
		record.setUsername(username);
		record.setPassword(password);
		List<User> result =userService.findbyentity(record);
		if ( result.size()>0 && result.get(0).getPassword().equals(password)	)  {
			return "index";
		}else {
			 return "login";
		}
	}
}
