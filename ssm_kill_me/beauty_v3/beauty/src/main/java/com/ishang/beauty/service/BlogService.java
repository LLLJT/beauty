package com.ishang.beauty.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ishang.beauty.entity.Blog;
import com.ishang.beauty.entity.BlogStar;
import com.ishang.beauty.entity.User;

@Service
public interface BlogService {

	/**
	 * 查询所有
	 * */
	List<Blog> findall();
	
	/**
	 * 添加
	 * */
	int addone(Blog record);
	
	/**
	 * 逻辑删除
	 * 调用update del_flag置0 
	 * */
	int deleteone(Blog record);
	
	/**
	 * 修改
	 * */
	int updateone(Blog record);
	
	/**
	 * 精确查找 by id
	 * */
	Blog findbyid(int id);
	
	/**
	 * 模糊查找
	 * 标题关键词
	 * */
	List<Blog> findbyentity(Blog record);
	
	/**
	 * 模糊查找
	 * 时间/热度/推荐列表
	 *  热度暂定为收藏数
	 * keyword: "time", "hot" or "rec"
	 * desc: true, 降序; false, 升序
	 * */
	List<Blog> findbyentity(int upid, String keyword, Boolean desc);
	
	/**
	 * 添加收藏
	 * 调用BlogStarDao.insert
	 * */
	int starblog(BlogStar record);
	
	/**
	 * 取消收藏
	 * 调用BlogStarDao.deleteByPrimaryKey
	 * */
	int undostar(int id);
	
	/**
	 * 查找数字
	 * 被收藏数&评论数
	 * keyword: "star" or "cmt"
	 * */
	int getnum(int blogid, String keyword);
	
    /**
     * 获取一周内有更新的关注up主
     * */
    List<User> selectlatestup(int followerid);
	
	/**
     * 获取关注up主一周内更新的blog
     * */
    List<Blog> selectlatestblog(int followerid);
}
