package com.ishang.beauty.dao;

import com.ishang.beauty.entity.User;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(User record);

	List<User> selectByPrimaryKey(Integer id);

	List<User> selectAll();

	int updateByPrimaryKey(User record);
	
	int updateByPrimaryKeyPlus(User record);

	/**
	 * 模糊查找(初始)
	 * */
	List<User> selectlike(User record);
	/**
	 * 修改个人头像
	 */
	int updateImg(User record);
	
	

	String selectImg(Integer id);
	/**
	 * 模糊查找(正式)
	 */
	
	List<User> selectLike(String username);
	
	
}