package com.ishang.beauty.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ishang.beauty.entity.BlogComment;

@Service
public interface BlogCommentService {

	/**
	 * 查询所有
	 * */
	List<BlogComment> findall();
	
	/**
	 * 添加
	 * */
	int addone(BlogComment record);
	
	/**
	 * 逻辑删除
	 * */
	int deleteone(BlogComment record);
	
	/**
	 * 修改评论
	 * 没有修改功能
	 * */
	int updateone(BlogComment record);
	
	/**
	 * 精确查找
	 * */
	BlogComment findbyid(int id);
	
	/**
	 * 模糊查找
	 * */
	List<BlogComment> findbyentity(BlogComment record);
	
	/**
	 * 查找普通评论
	 * 排除楼中楼
	 * */
	List<BlogComment> findcmtlist(int blogid);
	
	/**
	 * 查找楼中楼
	 * */
	List<BlogComment> findreply(int blogid, int cmtid);
	
	/**
	 * 查找某blog的所有reply
	 * */
	List<BlogComment> findallreply(int blogid);
	
	/**
	 * 返回某normal cmt的reply集合
	 * ncmtid: normal cmt 
	 * */
	public List<BlogComment> getonecmtreply(int ncmtid) ;
}
