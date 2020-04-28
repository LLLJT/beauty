package com.ishang.ssmdemo1.utils;

import java.io.Serializable;

import lombok.Data;

/**
 * 通信 Json 封装类
 * <p />
 * <p>
 * 用于封装来自前端的请求数据，或者封装响应前端的返回数据。
 * </p>
 * 
 * @author CTidy
 */
@Data
public class DataResponse implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 响应状态码
	 */
	private String code;

	/**
	 * 响应消息
	 */
	private String msg;

	/**
	 * 返回数据
	 */
	private Object data;

	public DataResponse success(Object data) {
		this.code = "200";
		this.msg = "success";
		this.data = data;
		return this;
	}

	public DataResponse error() {
		this.code = "500";
		this.msg = "error";
		this.data = null;
		return this;
	}

	public DataResponse error(String code, String msg) {
		this.code = code;
		this.msg = msg;
		this.data = null;
		return this;
	}
}
