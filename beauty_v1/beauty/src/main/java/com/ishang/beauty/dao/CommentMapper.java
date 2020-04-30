package com.ishang.beauty.dao;

import com.ishang.beauty.entity.Comment;
import java.util.List;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer id);

    List<Comment> selectAll();

    int updateByPrimaryKey(Comment record);
    
    /**
     * 模糊查找
     * */
    List<Comment> selectlike(Comment record);
    
    /**
     * 查找normal评论
     * 排除reply
     * */
    List<Comment> selectncmt(int blogid);
    
    /**
     * 查找某blog的所有reply
     * */
    List<Comment> selectreply(int blogid);
    
    /**
     * 获取某blog的评论数
     * */
    int getblogcmt(int blogid);
}