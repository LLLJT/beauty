package com.ishang.ssmdemo1.dao;

import java.util.List;

import com.ishang.ssmdemo1.entity.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer id);

    List<Comment> selectAll();

    int updateByPrimaryKey(Comment record);
}