package com.ishang.beauty.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ishang.beauty.dao.CommentMapper;
import com.ishang.beauty.entity.Comment;
import com.ishang.beauty.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper dao;
	
	@Override
	public List<Comment> findall() {
		return dao.selectAll();
	}

	@Override
	public int addone(Comment record) {
		return dao.insert(record);
	}

	@Override
	public int deleteone(Comment record) {
		record.setDelFlag(false);
		return updateone(record);
	}

	@Override
	public int updateone(Comment record) {
		return dao.updateByPrimaryKey(record);
	}

	@Override
	public Comment findbyid(int id) {
		return dao.selectByPrimaryKey(id);
	}

	@Override
	public List<Comment> findbyentity(Comment record) {
		return dao.selectlike(record);
	}

	@Override
	public List<Comment> findcmtlist(int blogid) {
		return dao.selectncmt(blogid);
	}

	@Override
	public List<Comment> findreply(int blogid, int cmtid) {
		// TODO Auto-generated method stub
//		1 查出当前blog下所有楼中楼
		List<Comment> replylist=dao.selectreply(cmtid);
		return replylist;
	}

}
