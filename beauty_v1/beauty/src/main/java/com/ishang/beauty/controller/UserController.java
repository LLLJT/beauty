package com.ishang.beauty.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.UserService;
import com.ishang.beauty.utils.DataResponse;
import com.ishang.beauty.utils.Msg;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;

	@RequestMapping("/userList")
	public ModelAndView findall(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {

		PageHelper.startPage(pn, 5);
		List<User> uList = service.findall();
		PageInfo<User> page = new PageInfo<User>(uList, 5);
		/*
		 * 测试page中的参数 System.out.println("页码数:"+page.getPageNum());
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

		ModelAndView mv = new ModelAndView("backuserList");
		mv.addObject("pageInfo", page);
		return mv;

	}

	@RequestMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model, HttpServletRequest request, HttpServletResponse response) {
		User record = new User();
		record.setUsername(username);
		record.setPassword(password);
		// 判断是否记住密码
		Boolean re = false;
		String checkboxNum = request.getParameter("checkboxNum");
		if (checkboxNum != null) {
			if (checkboxNum.equals("on"))
				re = true;
		}

		List<User> result = service.findbyentity(record);
		if (result.size() > 0 && result.get(0).getPassword().equals(password)) {
			// 设置session
			HttpSession session = request.getSession();
			session.setAttribute("SESSION_UserName", result.get(0).getUsername());
			session.setAttribute("SESSION_PassWord", result.get(0).getPassword());
			// 由于CookieVersion 0不支持逗号，因此换成#号
			String loginInfo = result.get(0).getUsername() + "#" + result.get(0).getPassword() + "#"
					+ result.get(0).getId();
			String loginInfo2 = result.get(0).getUsername() + "#" +'1'+ "#"
					+ result.get(0).getId();
			
			// 如果记住密码设置cookie
			if (re) {
				Cookie userCookie = new Cookie("user", loginInfo);
				// 设置保存7天cookie
				userCookie.setMaxAge(7 * 24 * 60 * 60);
				userCookie.setPath("/");
				response.addCookie(userCookie);
			} else {// 没有选中记住密码，只保存username和id，且保存7天
				Cookie newCookie = new Cookie("user", loginInfo2);
				newCookie.setMaxAge(7 * 24 * 60 * 60);
				newCookie.setPath("/");
				// 覆盖之前的userCookie
				response.addCookie(newCookie);
			}

			return "index";
		} else {
			model.addAttribute("errMsg", "用户名或密码错误，请重新输入");

			return "login";
		}
	}

	//
	@RequestMapping("/tologin")
	public String tologin() {
		return "login";

	}

	@RequestMapping("/toregist")
	public String toadd() {
		return "regist";

	}

	// ajax传json值传到后端

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	// @ResponseBody

	public ModelAndView adduser(@RequestBody User u) {
		// 判断username,password,roleid是否为空
		System.out.println("进入注册");
		ModelAndView mv = new ModelAndView();
		if (u.getUsername().equals(null) || u.getPassword().equals(null) || u.getRoleid().equals(null)) {
			// 已经在前端验证
			// mv.addObject("errMsg", "请填入必填字段");
			mv.setViewName("regist");
			return mv;
		} else {
			u.setDel_flag(1);
			int r = service.addone(u);
			// mv.addObject("success", "注册成功");
			mv.setViewName("login");
			return mv;
		}
	}

	// 登出
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";

	}

	// userlist界面的新增模态框新建用户
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@RequestBody User user) {
		user.setDel_flag(1);
		service.saveUser(user);
		return "backuserList";
	}

	// userList界面的update模态框获取用户信息
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String UpdateUser(@RequestBody User user, Model model) {

		user.setDel_flag(1);
		service.updateone(user);
		model.addAttribute("user", user);
		return "backuserList";

	}

	// userList界面的delete模态框
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	public String DeleteUser(@RequestBody User user) {

		System.out.println(user.getId());
		service.deleteone(user.getId());
		return "backuserList";

	}

	@RequestMapping(value = "/toindex")
	public String index() {
		return "index";

	}

	@RequestMapping("/selectLike")
	public ModelAndView findlike(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			@RequestParam ("username")String username, Model model,HttpServletRequest request,HttpServletResponse response) {

		PageHelper.startPage(pn, 5);
		List<User> list = service.selectLike(username);
		PageInfo<User> page = new PageInfo<User>(list, 5);
		System.out.println(page.getList());
		
		ModelAndView mv = new ModelAndView("backuserLike");
		mv.addObject("pageInfo", page);
		
		// 设置将username传入cookie
		if(username!=null) {
					HttpSession session = request.getSession();
					session.setAttribute("SESSION_UserName", username);
		
					// 由于CookieVersion 0不支持逗号，因此换成#号
					String likeusername = username;
					
						Cookie userCookie = new Cookie("like", likeusername);
						// 设置保存7天cookie
						userCookie.setMaxAge(7 * 24 * 60 * 60);
						userCookie.setPath("/");
						response.addCookie(userCookie);
					
		}
		
		return mv;

	}
//backuserLike.jsp
	@RequestMapping("/tolike")
	public String tolike() {
		return "backuserLike";

	}

}
