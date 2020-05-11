package com.ishang.beauty.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ishang.beauty.entity.User;
import com.ishang.beauty.entity.UserFollow;
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

	// 修改头像
	@RequestMapping("/toupdateimg")
	public String updateImg() {
		return "updateimg.jsp";
	}

	// 头像上传
	@RequestMapping("/upload")
	public String upload(User user, HttpServletRequest request, Model model) throws IllegalStateException, IOException {
		// 保存数据库的路径
		String sqlPath = null;
		// 定义文件保存的本地路径
		// fbw: "D:\\git\\repository\\beauty\\beauty_v1\\beauty\\src\\main\\webapp\\images\\userimg"
//		String localPath = "C:\\Users\\24466\\Documents\\GitHub\\beauty\\beauty_v1\\beauty\\src\\main\\webapp\\images\\userimg\\";
		String localPath =  "D:\\git\\repository\\beauty\\beauty_v1\\beauty\\src\\main\\webapp\\images\\userimg";
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
		return "user/user_setting.jsp";
	}
	
	//跳转到个人中心
	@RequestMapping("/tocenter")
	public String tocenter(Model model) {
		return "usercenter.jsp";
	}

	// 获取查询到的头像
	@RequestMapping("/getpic")
	public String getPic(@RequestParam Integer id, HttpSession session) {

		String getpic = service.selectImg(id);
		System.out.println(getpic);
		session.setAttribute("getpic", getpic);
		// model.addAttribute("getpic", getpic);
		return "usercenter.jsp";
	}

	@RequestMapping("/getpic2")
	public String getPic2(@RequestParam Integer id, HttpSession session) {
		String getpic = service.selectImg(id);
		System.out.println(getpic);
		session.setAttribute("getpic", getpic);
		// model.addAttribute("getpic", getpic);
		return "index.jsp";
	}
	// 修改密码
	@RequestMapping(value = "/modifypwd",method = RequestMethod.POST)
	public String ModifyPwd(@RequestBody User user) {
//		user.setDel_flag(1);
//		user.setRoleid(2);
//		System.out.println(user.getBirthday());
		System.out.println(user);
//		System.out.println("以上为user内容，包含id和password");
		service.updatepswd(user);
		//TODO 将新密码存入cookie中
		return "usercenter.jsp";

	}

	//修改用户信息
	@RequestMapping(value = "/updateInfo" ,method = RequestMethod.POST)
	public String UpdateInfo(@RequestBody User user) throws ParseException {
		user.setDel_flag(1);	
		System.out.println(user);
		service.updateone(user);
		return "index.jsp";
	}
	
	@ResponseBody
	@RequestMapping(value = "/loaduserinfo", method = RequestMethod.POST)
	public Map<String, User> loaduserinfo(@RequestParam("userid") String str_userid) {
		Map<String, User> map = new HashMap<String, User>();
		int userid=1;
		if(!( str_userid ==null || str_userid.isEmpty())) userid=Integer.parseInt(str_userid);
		User result = service.selectbyid(userid).get(0);
		map.put("cuser",result);
		return map;
	}
		
	//转到user_info.jsp
	@RequestMapping("/toinfo")
	public String ToInfo() {
		return "user/user_info.jsp";
	}
	
	//转到user_setting.jsp
	@RequestMapping("/tosetting")
	public String ToSetting() {
		return "user/user_setting.jsp";	
	}
	
	@RequestMapping("/tolove")
	public String Tolove() {
		return "user/user_love.jsp";
	}
	
	// 获取关注数

	// 获取关注列表
	@RequestMapping("/user_follow")
	public String followList(@RequestParam Integer followerid, Model model) {
		int fcount = service.followcount(followerid);
		System.out.println(fcount);

		List<UserFollow> flist = service.followList(followerid);

		model.addAttribute("fcount", fcount);
		model.addAttribute("flist", flist);

		//list本身就是一个列表
		System.out.println(flist);

		return "user/user_follow.jsp";
	}
	
	@RequestMapping("/uploader")
	public String Uploader(@RequestParam Integer uploaderid,Model model) {
		int fan=service.fancount(uploaderid);
		System.out.println(fan);
		//List<UserFollow> fanlist=service.FanList(uploaderid);
		List<User> uplist=service.selectbyid(uploaderid);
		//System.out.println(fanlist);
		System.out.println(uplist);
		model.addAttribute("fan", fan);
		//model.addAttribute("fanlist", fanlist);
		model.addAttribute("uplist", uplist);

		return "uploader.jsp";

	}
	
	//通过用户id查询password，用于修改密码(user_setting)
	@RequestMapping("/findpwd")
	public String findpwd(@RequestParam Integer id,HttpSession session) {
		List<User> list=service.findbyid(id);
		String pwd=list.get(0).getPassword();
		session.setAttribute("pwd", pwd);
		return "user/user_setting.jsp";
	}
	
	//将结果放到uploaderFanList中
	@RequestMapping("/upfanlist")
	public String upfanlist(@RequestParam Integer id,Model model) {
		int fan=service.fancount(id);
		System.out.println(fan);
		List<UserFollow> fanlist=service.FanList(id);
		List<User> uplist=service.selectbyid(id);
		System.out.println(fanlist);
		System.out.println(uplist);
		model.addAttribute("fan", fan);
		model.addAttribute("fanlist", fanlist);
		model.addAttribute("uplist", uplist);
		return "uploaderFanList.jsp";
	}
	
	
}
