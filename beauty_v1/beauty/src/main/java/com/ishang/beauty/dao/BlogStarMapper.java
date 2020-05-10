package com.ishang.beauty.dao;

import java.util.List;

import com.ishang.beauty.entity.BlogStar;

public interface BlogStarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogStar record);

    BlogStar selectByPrimaryKey(Integer id);

    List<BlogStar> selectAll();

    int updateByPrimaryKey(BlogStar record);
    
    /**
     * 获取某blog的被收藏数
     * */
    int getblogstar(int blogid);
    
    /**
     * 获取某user的收藏list
     * */
    List<BlogStar> getuserstar(int userid);
    
    /**
     * 根据entity查找
     * */
    List<BlogStar> selectbyentity(BlogStar record);
}