package com.ishang.beauty.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ishang.beauty.entity.BlogType;

@Service
public interface BlogTypeService {

	/**
	 * 查询所有
	 * */
	List<BlogType> findall();
	
	/**
	 * 添加
	 * */
	int addone(BlogType record);
	
	/**
	 * 删除
	 * 逻辑删除 调用update del_flag置0 
	 * */
	int deleteone(BlogType record);
	
	/**
	 * 修改
	 * */
	int updateone(BlogType record);
	
	/**
	 * 模糊查找
	 * */
	List<BlogType> findbyentity(BlogType record);
	
}
