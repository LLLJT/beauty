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
    int selectFollowCount(Integer followerid);
    //获取关注列表
    List<UserFollow> selectFollowList(Integer followerid);
	
    //获取粉丝数
    int selectFanCount(Integer uploaderid);
    
    //获取粉丝列表
    List<UserFollow> selectFanList(Integer uploaderid);
    
    
    
    
    
    
}