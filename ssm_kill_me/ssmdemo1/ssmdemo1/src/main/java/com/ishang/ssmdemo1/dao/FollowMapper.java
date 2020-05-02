package com.ishang.ssmdemo1.dao;

import java.util.List;

import com.ishang.ssmdemo1.entity.Follow;


public interface FollowMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Follow record);

    Follow selectByPrimaryKey(Integer id);

    List<Follow> selectAll();

    int updateByPrimaryKey(Follow record);
}