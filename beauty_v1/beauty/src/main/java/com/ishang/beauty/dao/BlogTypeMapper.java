package com.ishang.beauty.dao;

import com.ishang.beauty.entity.BlogType;
import java.util.List;

public interface BlogTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogType record);

    BlogType selectByPrimaryKey(Integer id);

    List<BlogType> selectAll();

    int updateByPrimaryKey(BlogType record);
}