package com.ishang.ssmdemo1.dao;


import java.util.List;

import com.ishang.ssmdemo1.entity.Blog;

public interface BlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);

    Blog selectByPrimaryKey(Integer id);

    List<Blog> selectAll();

    int updateByPrimaryKey(Blog record);
}