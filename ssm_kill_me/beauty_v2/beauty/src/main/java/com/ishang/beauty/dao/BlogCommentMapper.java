package com.ishang.beauty.dao;

import com.ishang.beauty.entity.BlogComment;
import java.util.List;

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
    List<BlogComment> selectreply(int blogid);
    
    /**
     * 获取某blog的评论数
     * */
    int getblogcmt(int blogid);
}