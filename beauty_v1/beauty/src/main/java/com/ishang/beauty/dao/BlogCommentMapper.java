package com.ishang.beauty.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ishang.beauty.entity.BlogComment;

public interface BlogCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogComment record);

    BlogComment selectByPrimaryKey(Integer id);

    List<BlogComment> selectAll();

    int updateByPrimaryKey(BlogComment record);
    
    /**
     * 模糊查找
     * */
    List<BlogComment> selectlike(BlogComment record);
    
    /**
     * 查找normal评论
     * 排除reply
     * */
    List<BlogComment> selectncmt(int blogid);
    
    /**
     * 查找某blog的所有reply
     * */
    List<BlogComment> selectallreply(int blogid);
    
    /**
     * 查找某blog的所有reply
     * */
    List<BlogComment> selectreply(@Param("blogid")int blogid, @Param("cmtid")int cmtid);
    
    /**
     * 获取某blog的评论数
     * */
    int getblogcmt(int blogid);
}