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
	 * 精确查找
	 * 根据id
	 * */
	User findbyid(int id);
	
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
