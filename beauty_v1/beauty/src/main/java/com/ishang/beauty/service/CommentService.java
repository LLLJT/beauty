package com.ishang.beauty.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ishang.beauty.entity.Comment;

@Service
public interface CommentService {

	/**
	 * 查询所有
	 * */
	List<Comment> findall();
	
	/**
	 * 添加
	 * */
	int addone(Comment record);
	
	/**
	 * 逻辑删除
	 * */
	int deleteone(Comment record);
	
	/**
	 * 修改评论
	 * 没有修改功能
	 * */
	int updateone(Comment record);
	
	/**
	 * 精确查找
	 * */
	Comment findbyid(int id);
	
	/**
	 * 模糊查找
	 * */
	List<Comment> findbyentity(Comment record);
	
	/**
	 * 查找普通评论
	 * 排除楼中楼
	 * */
	List<Comment> findcmtlist(int blogid);
	
	/**
	 * 查找楼中楼
	 * */
	List<Comment> findreply(int blogid, int cmtid);
		
}
