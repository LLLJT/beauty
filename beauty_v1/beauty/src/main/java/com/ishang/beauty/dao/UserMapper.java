package com.ishang.beauty.dao;


import java.util.List;

import com.ishang.beauty.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

	int insert(User record);

	User selectByPrimaryKey(Integer id);

	List<User> selectAll();

	int updateByPrimaryKey(User record);
	
	/**
	 * 模糊查找
	 * */
	List<User> selectlike(User record);

}