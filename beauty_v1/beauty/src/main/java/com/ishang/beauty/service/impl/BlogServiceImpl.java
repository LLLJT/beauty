package com.ishang.beauty.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ishang.beauty.dao.BlogCommentMapper;
import com.ishang.beauty.dao.BlogMapper;
import com.ishang.beauty.dao.BlogStarMapper;
import com.ishang.beauty.dao.UserMapper;
import com.ishang.beauty.entity.Blog;
import com.ishang.beauty.entity.BlogStar;
import com.ishang.beauty.entity.User;
import com.ishang.beauty.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogMapper dao;
	
	@Autowired
	private UserMapper userdao;
	@Autowired
	private BlogCommentMapper cmtdao;
	@Autowired
	private BlogStarMapper stardao;
	
	@Override
	public List<Blog> findall() {
		return dao.selectAll();
	}

	@Override
	public int addone(Blog record) {
		return dao.insert(record);
	}

	@Override
	public int deleteone(Blog record) {
		record.setDelFlag(false);
		return updateone(record);
	}

	@Override
	public int updateone(Blog record) {
		return dao.updateByPrimaryKey(record);
	}

	@Override
	public Blog findbyid(int id) {
		return dao.selectByPrimaryKey(id);
	}

	@Override
	public List<Blog> findbyentity(Blog record) {
		return dao.selectlike(record);
	}

	@Override
	public List<Blog> findbyentity(int upid, String keyword, Boolean desc) {
		List<Blog> rstlist= new ArrayList<Blog>();
		switch (keyword) {
		case "time":
			rstlist=dao.selectuptime(upid);
			break;
		case "hot":
			rstlist=dao.selectupstar(upid);
			break;
		case "rec":
			rstlist=dao.selectrec();
			break;
		default:
			rstlist=dao.selectAll();
			break;
		}
		if(!desc) {
			Collections.reverse(rstlist);
		} 
		return rstlist;
	}

	@Override
	public int starblog(BlogStar record) {
		return stardao.insert(record);
	}

	@Override
	public int undostar(int userid, int blogid) {
		BlogStar record = new BlogStar();
		record.setUserid(userid);
		record.setBlogid(blogid);
		record=findstarbyentity(record).get(0);
		return  stardao.deleteByPrimaryKey(record.getId());
	}

	@Override
	public int getnum(int blogid, String keyword) {
		int num=0;
		if(keyword.equals("star")) {
			num=stardao.getblogstar(blogid);
		}else {
			num=cmtdao.getblogcmt(blogid);
		}
		return num;
	}

	@Override
	public List<Blog> selectlatestblog(int followerid) {
		return dao.selectlatestblog(followerid);
	}

	@Override
	public List<User> selectlatestup(int followerid) {
		List<User> reslist=userdao.selectlatestup(followerid);
		return reslist;
	}

	@Override
	public List<Map<String,Object>> selectstarmap(int userid) {
		
		List<Map<String,Object>> rstlist = new ArrayList<Map<String,Object>>();
		// get star list { starid, userid, blogid, createtime }
		List<BlogStar> starlist =stardao.getuserstar(userid);
		// for each
		for(BlogStar star : starlist) {
			Map<String,Object> map = new HashMap<String, Object>();
			// blogid -> bloginfo { userid blogid picurl blogtitle }
			// userid -> username
			map.put("blogid", star.getBlogid());
			Blog blog = dao.selectByPrimaryKey(star.getBlogid());
			map.put("username", userdao.selectByPrimaryKey(blog.getUserid()).get(0).getUsername());
			map.put("picurl", blog.getPicUrl1());
			map.put("blogtitle", blog.getTitle());
			rstlist.add(map);
		}

		return rstlist;
	}

	@Override
	public List<BlogStar> findstarbyentity(BlogStar record) {
		return stardao.selectbyentity(record);
	}

}
