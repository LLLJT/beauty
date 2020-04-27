package com.ishang.beauty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.UserService;
import com.ishang.beauty.utils.DataResponse;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;
	
	@GetMapping("/getAll")
	private DataResponse getAll() {
		DataResponse response = new DataResponse();
		List<User> result = service.findall();
		return response.success(result);
	}
	
	@GetMapping("/login")
	private DataResponse  login(@RequestParam("username") String username, @RequestParam("password") String password) {
		DataResponse response = new DataResponse();
		User record = new User();
		record.setUsername(username);
		record.setPassword(password);
		List<User> result =service.findbyentity(record);
		if ( result.size()>0 	)  {
			User user = result.get(0);
			return response.success(user);
		}else {
			return response.error();
		}
	}
}
