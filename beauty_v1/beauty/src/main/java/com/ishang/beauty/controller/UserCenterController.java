package com.ishang.beauty.controller;

import java.io.File;
import java.io.IOException;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.impl.UserServiceImpl;

/**
 * 
 * @author 24466 修改头像，修改密码，更改个人信息，获取关注数和关注列表， 获取粉丝数和粉丝列表，获取收藏blog数量与列表
 */
@Controller

@RequestMapping("/center")
public class UserCenterController {
	@Autowired
	private UserServiceImpl service;

	@RequestMapping("/user_follow")
	public String user_follow() {
		return "user/user_follow";

	}

	// 修改头像
	@RequestMapping("/toupdateimg")
	public String updateImg() {
		return "updateimg";
	}

	// 头像上传
	@RequestMapping("/upload")
	public String upload(User user, HttpServletRequest request, Model model) throws IllegalStateException, IOException {
		// 保存数据库的路径
		String sqlPath = null;
		// 定义文件保存的本地路径

		String localPath = "C:\\Users\\24466\\Documents\\GitHub\\beauty\\beauty_v1\\beauty\\src\\main\\webapp\\images\\userimg\\";
		// 定义文件名
		String filename = null;
		if (!user.getFile().isEmpty()) {
			// 生成uuid作为文件名称
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			// 获得文件类型（可以判断如果不是图片，禁止上传）
			String contentType = user.getFile().getContentType();
			// 获得文件后缀名
			String suffixName = contentType.substring(contentType.indexOf("/") + 1);
			// 得到 文件名
			filename = uuid + "." + suffixName;
			System.out.println(filename);
			// 文件保存路径
			user.getFile().transferTo(new File(localPath + filename));
		}
		// 把图片的相对路径保存至数据库
		sqlPath = "images/userimg/" + filename;
		System.out.println(sqlPath);
		user.setProfileimg(sqlPath);

		service.updateImg(user);
		//model.addAttribute("image", user);
		return "user/user_setting";

	}

	@RequestMapping("/tocenter")
	public String tocenter() {

		return "usercenter";
	}

	// 修改密码
	@RequestMapping(value = "/modifypwd",method = RequestMethod.POST)
	public String ModifyPwd(@RequestBody User user) {
		user.setDel_flag(1);
		user.setRoleid(2);
		System.out.println(user.getBirthday());
		System.out.println(user);
		System.out.println("以上为user内容，包含id和password");
		service.updateone(user);
		return "usercenter";

	}

	//修改用户信息
	@RequestMapping(value = "/updateInfo" ,method = RequestMethod.POST)
	public String UpdateInfo(@RequestBody User user) throws ParseException {
		user.setDel_flag(1);
		user.setRoleid(2);
		/*
		 * System.out.println(user.getBirthday());
		 * //用SimpleDateFormat将get到的birthday转成yyyy-MM-dd型的string SimpleDateFormat
		 * format= new SimpleDateFormat("yyyy-MM-dd");
		 * System.out.println(format.format(user.getBirthday())); String
		 * time=format.format(user.getBirthday()); //再将string转成date型 Date
		 * date=format.parse(time); user.setBirthday(date);
		 */
		
		System.out.println(user);
		service.updateone(user);
		return "index";
	}
	/*
	 * //读取用户信息
	 * 
	 * @RequestMapping("/selectInfo") public ModelAndView SelectInfo(Integer
	 * id,Model model) {
	 * 
	 * List<User>user=service.selectbyid(id); ModelAndView mv =new ModelAndView();
	 * System.out.println("通过id查到的用户信息为:"+user.get(0).toString());
	 * mv.setViewName("user/user_info"); mv.addObject("user", user); return mv;
	 * 
	 */
		
		
		
	
	//转到user_info.jsp
	@RequestMapping("/toinfo")
	public String ToInfo() {
		return "user/user_info";
		
	}
	//转到user_setting.jsp
	@RequestMapping("/tosetting")
	public String ToSetting() {
		return "user/user_setting";
		
	}
	//转到user_follow.jsp
	@RequestMapping("/tofollow")
	public String Tofollow() {
		return "user/user_follow";
		
	}
	@RequestMapping("/tolove")
	public String Tolove() {
		return "user/user_love";
		
	}
	
	
	//从数据库读入头像路径
	public String selectimg() {
		return "";
	}
	
	
	
}
