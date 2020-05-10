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
	 * 模糊查找
	 * */
	List<User> selectlike(User record);
	
	/**
	 * 修改个人头像
	 */
	int updateImg(User record);
	
    /**
     * 获取一周内有更新的关注up主
     * */
    List<User> selectlatestup(int followerid);
	
}