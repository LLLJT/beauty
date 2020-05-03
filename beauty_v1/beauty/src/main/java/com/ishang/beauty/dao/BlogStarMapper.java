package com.ishang.beauty.dao;

import com.ishang.beauty.entity.BlogStar;
import java.util.List;

public interface BlogStarMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogStar record);

    BlogStar selectByPrimaryKey(Integer id);

    List<BlogStar> selectAll();

    int updateByPrimaryKey(BlogStar record);
}