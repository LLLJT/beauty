package com.ishang.beauty.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.Charsets;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.UserService;
import com.ishang.beauty.utils.EncodingTool;

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

		ModelAndView mv = new ModelAndView("backuserList.jsp");
		mv.addObject("pageInfo", page);
		return mv;

	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("原来："+username);
		username=EncodingTool.encodeStr(username);
		System.out.println("处理后："+username);
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
			// fbw: username涉及到特殊字符 如空格 对string编码 使用时需要解码
			StringBuffer logininfo = new StringBuffer();
			logininfo.append(URLEncoder.encode(result.get(0).getUsername(), String.valueOf(Charsets.UTF_8)));	
			System.out.println(logininfo);
//			String loginInfo = result.get(0).getUsername() + "#" + result.get(0).getPassword() + "#" + result.get(0).getId();
//			String loginInfo2 = result.get(0).getUsername() + "#" +'1'+ "#" + result.get(0).getId();
			// 如果记住密码设置cookie
			if (re) {
				logininfo.append("#").append(result.get(0).getPassword());
				logininfo.append("#").append(result.get(0).getId().toString());
				Cookie userCookie = new Cookie("user", logininfo.toString());
				// 设置保存7天cookie
				userCookie.setMaxAge(7 * 24 * 60 * 60);
				userCookie.setPath("/");
				response.addCookie(userCookie);
			} else {// 没有选中记住密码，删除cookie
				logininfo.append("#").append("1");
				logininfo.append("#").append(result.get(0).getId().toString());
				Cookie newCookie = new Cookie("user", logininfo.toString());
				newCookie.setMaxAge(7 * 24 * 60 * 60);
				newCookie.setPath("/");
				// 覆盖之前的userCookie
				response.addCookie(newCookie);
			}
			/*
			 * String target= "../index?userid="+result.get(0).getId();
			 * System.out.println(target);
			 */
			return "../index";
		} else {
			model.addAttribute("errMsg", "用户名或密码错误，请重新输入");

			return "login.jsp";
		}
	}

	//
	@RequestMapping("/tologin")
	public String tologin() {
		return "login.jsp";

	}

	@RequestMapping("/toregist")
	public String toadd() {
		return "regist.jsp";

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
			mv.setViewName("regist.jsp");
			return mv;
		} else {
			u.setDel_flag(1);
			int r = service.addone(u);
			// mv.addObject("success", "注册成功");
			mv.setViewName("login.jsp");
			return mv;
		}
	}

	// 登出
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login.jsp";

	}

	// userlist界面的新增模态框新建用户
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@RequestBody User user) {
		user.setDel_flag(1);
		service.saveUser(user);
		return "backuserList.jsp";
	}

	// userList界面的update模态框获取用户信息
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String UpdateUser(@RequestBody User user, Model model) {

		
		user.setDel_flag(1);
		service.updateone(user);
		model.addAttribute("user", user);
		return "backuserList.jsp";

	}
	//userList界面的delete模态框
	@RequestMapping(value = "/deleteUser",method = RequestMethod.POST)
	public String DeleteUser(@RequestBody User user) {
		
		System.out.println(user.getId());
		service.deleteone(user.getId());
		return "backuserList.jsp";
	}

	@RequestMapping("/selectLike")
	public ModelAndView findlike(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			@RequestParam ("username")String username, Model model,HttpServletRequest request,HttpServletResponse response) {

		PageHelper.startPage(pn, 5);
		List<User> list = service.selectLike(username);
		PageInfo<User> page = new PageInfo<User>(list, 5);
		System.out.println(page.getList());

		ModelAndView mv = new ModelAndView("backuserLike.jsp");
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
		return "backuserLike.jsp";
	}

}
