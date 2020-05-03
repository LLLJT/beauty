package com.ishang.beauty.dao;

import com.ishang.beauty.entity.UserFollow;
import java.util.List;

public interface UserFollowMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserFollow record);

    UserFollow selectByPrimaryKey(Integer id);

    List<UserFollow> selectAll();

    int updateByPrimaryKey(UserFollow record);
}