package com.ishang.beauty.controller;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.impl.UserServiceImpl;

/**
 * 
 * @author 24466 修改头像，修改密码，更改个人信息，获取关注数和关注列表， 获取粉丝数和粉丝列表，获取收藏blog数量与列表
 */
@Controller
@RequestMapping("/usercenter")
public class UserCenterController {
	@Autowired
	private UserServiceImpl service;
	
	@RequestMapping("/user_follow")
	public String user_follow() {
		return "user/user_follow";
		
	}
	//修改头像
	@RequestMapping("/toupdateimg")
		public String updateImg() {
		return "updateimg";
		}
	
	//头像上传
	@RequestMapping("/upload")
	public String upload(User user,HttpServletRequest request,Model model) throws IllegalStateException, IOException {
		//保存数据库的路径
		String sqlPath=null;
		//定义文件保存的本地路径 
		String localPath="D:\\Image\\";
		 //定义文件名  
		String filename=null;
		if(!user.getFile().isEmpty()) {
			//生成uuid作为文件名称    
            String uuid = UUID.randomUUID().toString().replaceAll("-","");    
            //获得文件类型（可以判断如果不是图片，禁止上传）    
            String contentType=user.getFile().getContentType();  
            //获得文件后缀名   
            String suffixName=contentType.substring(contentType.indexOf("/")+1);  
            //得到 文件名  
            filename=uuid+"."+suffixName;   
            System.out.println(filename);  
            //文件保存路径  
            user.getFile().transferTo(new File(localPath+filename));    
		}
		//把图片的相对路径保存至数据库  
        sqlPath = "images/"+filename;  
        System.out.println(sqlPath);  	
        user.setProfileimg(sqlPath);
        
        service.updateImg(user);
        model.addAttribute("image",user );  
        return "updateimg";  
        
	}
	@RequestMapping("/tousercenter")
	public String tocenter() {
		
		return "usercenter";
	}
	//修改密码
    @RequestMapping("/modifypwd")
    	public String ModifyPwd(@RequestParam String oldpassword,@RequestParam String password1,@RequestParam String password2) {
    	//从数据库中核对旧密码是否正确
    	
    	
    	//判断两次密码是否输入一致
    	
    	//sql语句写入数据库，通过id判断
    	
    return null ;
    	
    }
	
	

}
