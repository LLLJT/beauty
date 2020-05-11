package com.ishang.beauty.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ishang.beauty.dao.BlogTypeMapper;
import com.ishang.beauty.entity.BlogType;
import com.ishang.beauty.service.BlogTypeService;

@Service
public class BlogTypeServiceImpl implements BlogTypeService {
	
	@Autowired
	private BlogTypeMapper dao;

	@Override
	public List<BlogType> findall() {
		return dao.selectAll();
	}

	@Override
	public int addone(BlogType record) {
		return dao.insert(record);
	}

	@Override
	public int deleteone(BlogType record) {
		record.setDelFlag(false);
		return updateone(record);
	}

	@Override
	public int updateone(BlogType record) {
		return dao.updateByPrimaryKey(record);
	}

	@Override
	public List<BlogType> findbyentity(BlogType record) {
		return dao.selectlike(record);
	}

}
