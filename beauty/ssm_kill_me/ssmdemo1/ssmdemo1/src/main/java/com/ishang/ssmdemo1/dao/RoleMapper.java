package com.ishang.ssmdemo1.dao;

import java.util.List;

import com.ishang.ssmdemo1.entity.Role;


public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    Role selectByPrimaryKey(Integer id);

    List<Role> selectAll();

    int updateByPrimaryKey(Role record);
}