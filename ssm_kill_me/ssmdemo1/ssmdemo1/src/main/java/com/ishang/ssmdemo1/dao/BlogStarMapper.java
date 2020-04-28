package com.ishang.ssmdemo1.dao;

import java.util.List;

import com.ishang.ssmdemo1.entity.BlogStar;


public interface BlogStarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogStar record);

    BlogStar selectByPrimaryKey(Integer id);

    List<BlogStar> selectAll();

    int updateByPrimaryKey(BlogStar record);
}