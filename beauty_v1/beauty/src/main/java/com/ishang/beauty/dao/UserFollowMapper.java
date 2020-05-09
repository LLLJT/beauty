package com.ishang.beauty.dao;

import com.ishang.beauty.entity.UserFollow;
import java.util.List;

public interface UserFollowMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserFollow record);

    UserFollow selectByPrimaryKey(Integer id);

    List<UserFollow> selectAll();

    int updateByPrimaryKey();
    //获取关注数
    int selectFollowCount();
    //获取关注列表
    List<UserFollow> selectFollowList();
    //获取粉丝数&粉丝列表
    int selectFanCount();
    
    List<UserFollow> selectFanList();
    //收藏数和收藏列表
    int selectBlogCount();
    
    
    
    
    
    
    
    
    
    
}