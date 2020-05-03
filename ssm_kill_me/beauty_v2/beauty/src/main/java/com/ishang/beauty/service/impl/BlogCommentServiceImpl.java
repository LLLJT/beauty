package com.ishang.beauty.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ishang.beauty.dao.BlogCommentMapper;
import com.ishang.beauty.entity.BlogComment;
import com.ishang.beauty.service.BlogCommentService;

public class BlogCommentServiceImpl implements BlogCommentService {

	@Autowired
	private BlogCommentMapper dao;
	
	@Override
	public List<BlogComment> findall() {
		return dao.selectAll();
	}

	@Override
	public int addone(BlogComment record) {
		return dao.insert(record);
	}

	@Override
	public int deleteone(BlogComment record) {
		record.setDelFlag(false);
		return updateone(record);
	}

	@Override
	public int updateone(BlogComment record) {
		return dao.updateByPrimaryKey(record);
	}

	@Override
	public BlogComment findbyid(int id) {
		return dao.selectByPrimaryKey(id);
	}

	@Override
	public List<BlogComment> findbyentity(BlogComment record) {
		return dao.selectlike(record);
	}

	@Override
	public List<BlogComment> findcmtlist(int blogid) {
		return dao.selectncmt(blogid);
	}

	@Override
	public List<BlogComment> findreply(int blogid, int cmtid) {
		// TODO comment的查询评论方法 service层 可能是不完善的方法
//		1 查出当前blog下所有楼中楼
		List<BlogComment> replylist=dao.selectreply(cmtid);
		return replylist;
	}

}