package com.ishang.beauty.entity;

import java.util.List;
import java.util.Map;

public class WholeComment {
	
	int cmtnum;
	
	List<BlogComment> normalcmt;
	
	Map<Integer, List<BlogComment>> replymap;
	
	Map<Integer,String> cmtermap;

	public int getCmtnum() {
		return cmtnum;
	}

	public void setCmtnum(int cmtnum) {
		this.cmtnum = cmtnum;
	}

	public List<BlogComment> getNormalcmt() {
		return normalcmt;
	}

	public void setNormalcmt(List<BlogComment> normalcmt) {
		this.normalcmt = normalcmt;
	}

	public Map<Integer, List<BlogComment>> getReplymap() {
		return replymap;
	}

	public void setReplymap(Map<Integer, List<BlogComment>> replymap) {
		this.replymap = replymap;
	}

	public Map<Integer, String> getCmtermap() {
		return cmtermap;
	}

	public void setCmtermap(Map<Integer, String> cmtermap) {
		this.cmtermap = cmtermap;
	}
	
}
