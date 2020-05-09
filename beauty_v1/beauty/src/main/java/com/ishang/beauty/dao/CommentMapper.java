package com.ishang.beauty.dao;

import com.ishang.beauty.entity.Comment;
import java.util.List;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer cid);

    List<Comment> selectAll();

    int updateByPrimaryKey(Comment record);
}