package com.ishang.beauty.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class User implements Serializable {

	private Integer id;

	private String username;

	private String password;

	private Integer roleid;

	private Integer sex;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;

	private String school;

	private String introduction;

	private String profileimg;

	private Integer del_flag;
	
	public Integer getDel_flag() {
		return del_flag;
	}

	public void setDel_flag(Integer del_flag) {
		this.del_flag = del_flag;
	}

	private static final long serialVersionUID = 1L;
	
	//新增字段
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username == null ? null : username.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public Integer getRoleid() {
		return roleid;
	}

	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school == null ? null : school.trim();
	}

	public String getIntrodution() {
		return introduction;
	}

	public void setIntrodution(String introdution) {
		this.introduction = introduction == null ? null : introdution.trim();
	}

	public String getProfileimg() {
		return profileimg;
	}

	public void setProfileimg(String profileimg) {
		this.profileimg = profileimg == null ? null : profileimg.trim();
	}

	


	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(getClass().getSimpleName());
		sb.append(" [");
		sb.append("Hash = ").append(hashCode());
		sb.append(", id=").append(id);
		sb.append(", username=").append(username);
		sb.append(", password=").append(password);
		sb.append(", roleid=").append(roleid);
		sb.append(", sex=").append(sex);
		sb.append(", birthday=").append(birthday);
		sb.append(", school=").append(school);
		sb.append(", introduction=").append(introduction);
		sb.append(", profileimg=").append(profileimg);
		sb.append(", delFlag=").append(del_flag);
		sb.append(", serialVersionUID=").append(serialVersionUID);
		sb.append("]");
		return sb.toString();
	}

}