package com.ishang.beauty.dao;


import java.util.List;

import com.ishang.beauty.entity.BlogType;

public interface BlogTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogType record);

    BlogType selectByPrimaryKey(Integer id);

    List<BlogType> selectAll();

    int updateByPrimaryKey(BlogType record);
}