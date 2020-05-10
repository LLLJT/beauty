package com.ishang.beauty.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ishang.beauty.dao.BlogCommentMapper;
import com.ishang.beauty.dao.UserMapper;
import com.ishang.beauty.entity.BlogComment;
import com.ishang.beauty.entity.WholeComment;
import com.ishang.beauty.service.BlogCommentService;

@Service
public class BlogCommentServiceImpl implements BlogCommentService {

	@Autowired
	private BlogCommentMapper dao;
	
	@Autowired
	private UserMapper userdao;
	
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
	public List<BlogComment> findallreply(int blogid) {
		// comment的查询评论方法 service层 可能是不完善的方法
		// 查出当前blog下所有楼中楼
		List<BlogComment> replylist=dao.selectallreply(blogid);
		return replylist;
	}
	
	@Override
	public List<BlogComment> findreply(int blogid, int cmtid) {
		// comment的查询评论方法 service层 可能是不完善的方法
		// 查出当前normal cmt下所有reply
		List<BlogComment> replylist=dao.selectreply(blogid, cmtid);
		if(replylist.size()>0) return replylist;
		else return new ArrayList<BlogComment>();
	}
	
	@Override
	public List<BlogComment> getonecmtreply(int ncmtid) {
		
		List<BlogComment> rstlist= new ArrayList<BlogComment>();
		List<BlogComment> templist= new ArrayList<BlogComment>();
		
		BlogComment originalcmt = dao.selectByPrimaryKey(ncmtid);
		int blogid = originalcmt.getBlogid();
		
		templist=gettemplist(blogid, ncmtid);  //ncmt 的 一层 reply
		rstlist.addAll(templist);
		for(int i=0; i<rstlist.size(); i++) {
			BlogComment tempcmt=rstlist.get(i);
			System.out.println(tempcmt);
			int cmtid=tempcmt.getId();
			templist=gettemplist(blogid, cmtid);
			rstlist.addAll(templist);
		}
		
		return rstlist;
	}
	
	public List<BlogComment> gettemplist(int blogid, int ncmtid){
		return dao.selectreply(blogid, ncmtid);
	}

	@Override
	public WholeComment getwholecomment(int blogid) {
		
		WholeComment wholecmt= new WholeComment();

		// get cmt num
		wholecmt.setCmtnum(dao.getblogcmt(blogid));
		
		// get normal cmt
		wholecmt.setNormalcmt(findcmtlist(blogid));
		
		// get reply map
		Map<Integer, List<BlogComment>> replymap= new HashMap<Integer, List<BlogComment>>();
		Map<Integer,String> cmtermap=new HashMap<Integer, String>();
		for(BlogComment ncmt: wholecmt.getNormalcmt()) {
			cmtermap.put(ncmt.getUserid(), userdao.selectByPrimaryKey(ncmt.getUserid()).get(0).getUsername());
			
			//reply map
//			List<BlogComment> allreply=cmtservice.findallreply(blogid);
//			model.addAttribute("allreply", allreply);
//			List<BlogComment> replylist = cmtservice.findreply(blogid, ncmt.getId());
//			 if(replylist.size()>0)  replymap.put(ncmt.getId(), replylist);
			replymap.put(ncmt.getId(),  getonecmtreply(ncmt.getId()));
		}	
		
		wholecmt.setReplymap(replymap);
		// get cmter
		for(List<BlogComment> collection:replymap.values()) {
			for(BlogComment rcmt:collection) {
				cmtermap.put(rcmt.getUserid(), userdao.selectByPrimaryKey(rcmt.getUserid()).get(0).getUsername());			
			}
		}
		wholecmt.setCmtermap(cmtermap);
		
		return wholecmt;
	}

}
