package com.ishang.beauty.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ishang.beauty.dao.UserMapper;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper dao;

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

}
