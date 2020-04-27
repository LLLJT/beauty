package com.ishang.beauty.dao;

import java.util.List;

import com.ishang.beauty.entity.BlogStar;

public interface BlogStarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogStar record);

    BlogStar selectByPrimaryKey(Integer id);

    List<BlogStar> selectAll();

    int updateByPrimaryKey(BlogStar record);
}