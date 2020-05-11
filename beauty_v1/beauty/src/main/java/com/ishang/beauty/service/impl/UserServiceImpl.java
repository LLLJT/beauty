package com.ishang.beauty.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ishang.beauty.dao.BlogStarMapper;
import com.ishang.beauty.dao.UserFollowMapper;
import com.ishang.beauty.dao.UserMapper;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.entity.UserFollow;
import com.ishang.beauty.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper dao;
	
	@Autowired
	private UserFollowMapper followdao;
	
	@Autowired BlogStarMapper blogdao;

	public List<User> findall() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	public List<User> findbyentity(User user) {
		// TODO Auto-generated method stub
		return dao.selectlike(user);
	}

	public int addone(User user) {
		// TODO Auto-generated method stub
		return dao.insert(user);
	}

	public int deleteone(int id) {
		// TODO Auto-generated method stub
		return dao.deleteByPrimaryKey(id);
	}

	public int updateone(User user) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKey(user);
	}

	public int updateImg(User user) {
		// TODO 自动生成的方法存根
		return dao.updateImg(user);
	}

	public int updateoneplus(User user) {
		// TODO 自动生成的方法存根
		return dao.updateByPrimaryKeyPlus(user);
	}

	public List<User> selectbyid(Integer id) {
		// TODO 自动生成的方法存根
		return dao.selectByPrimaryKey(id);
	}

	public int saveUser(User user) {
		// TODO 自动生成的方法存根
		return dao.insert(user);
	}

	public List<User> findbyid(Integer id) {
		// TODO 自动生成的方法存根
		return dao.selectByPrimaryKey(id);
	}

	public int followcount(Integer followerid) {
		// TODO 自动生成的方法存根
		return followdao.selectFollowCount(followerid);
	}

	public List<UserFollow> followList(Integer followerid) {
		// TODO 自动生成的方法存根
		return followdao.selectFollowList(followerid);
	}

	public String selectImg(Integer id) {
		// TODO 自动生成的方法存根
		return dao.selectImg(id);
	}

	public List<User> selectLike(String username) {
		// TODO 自动生成的方法存根
		return dao.selectLike(username);
	}

	public int fancount(Integer id) {
		// TODO 自动生成的方法存根
		return followdao.selectFanCount(id);
	}

	public List<UserFollow> FanList(Integer id) {
		// TODO 自动生成的方法存根
		return followdao.selectFanList(id);
	}

	


	/*
	 * public int fancount() { // TODO 自动生成的方法存根 return followdao.selectFanCount();
	 * }
	 * 
	 * public List<UserFollow> fanList() { // TODO 自动生成的方法存根 return
	 * followdao.selectFanList(); }
	 */
	/*
	 * public int blogcount() { // TODO 自动生成的方法存根 return blogdao.selectBlogCount();
	 * }
	 * 
	 * public List<Blog> blogList() { // TODO 自动生成的方法存根 return
	 * blogdao.selectBlogList(); }
	 */
}
