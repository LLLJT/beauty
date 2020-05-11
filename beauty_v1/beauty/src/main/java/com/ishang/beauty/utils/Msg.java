package com.ishang.beauty.utils;

import java.util.HashMap;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.ishang.beauty.entity.User;

public class Msg {

	private int code;
	
	private String msg;
	
	private Map<String,Object> extend=new HashMap<String, Object>();
	
	public static Msg success() {
		Msg result=new Msg();
		result.setCode(200);
		result.setMsg("success");
		return result;
		
	}
	
	public static Msg failed() {
		Msg result=new Msg();
		result.setCode(400);
		result.setMsg("failed");
		return result;
		
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<String, Object> getExtend() {
		return extend;
	}

	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}

	public Msg add(String key, Object value) {
		this.getExtend().put(key, value);
		return this;
	}
	
	
}
