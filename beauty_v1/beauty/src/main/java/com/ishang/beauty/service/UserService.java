package com.ishang.beauty.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ishang.beauty.entity.User;

@Service
public interface UserService {

	/**
	 * 查询所有
	 * */
	List<User> findall();
	
	/**
	 * 模糊查找
	 * 根据username
	 * */
	List<User> findbyentity(User user);
	
	/**
	 * 增加一条记录
	 * */
	int addone(User user);
	
	/**
	 * 删除一条记录
	 * 根据id
	 * */
	int deleteone(int id);
	
	/**
	 * 更新一条记录
	 * */
	int updateone(User user);
	
	int updateoneplus(User user);
	
	int updateImg(User user);
	
	List<User> selectbyid(Integer id);

	int saveUser(User user);

	List<User> findbyid(Integer id);
	
	public int updatepswd(User record);
}
