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
		return dao.selectAll();
	}

	public List<User> findbyentity(User user) {
		return dao.selectlike(user);
	}

	public int addone(User user) {
		return dao.insert(user);
	}

	public int deleteone(int id) {
		return dao.deleteByPrimaryKey(id);
	}

	public int updateone(User user) {
		return dao.updateByPrimaryKey(user);
	}

	public int updateImg(User user) {
		return dao.updateImg(user);
	}

	public int updateoneplus(User user) {
		return dao.updateByPrimaryKeyPlus(user);
	}

	public List<User> selectbyid(Integer id) {
		return dao.selectByPrimaryKey(id);
	}

	public int saveUser(User user) {
		return dao.insert(user);
	}

	public List<User> findbyid(Integer id) {
		return dao.selectByPrimaryKey(id);
	}

}
