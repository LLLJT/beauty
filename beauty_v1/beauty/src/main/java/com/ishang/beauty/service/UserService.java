package com.ishang.beauty.service;

import java.util.List;

import com.ishang.beauty.entity.User;

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
}
