package com.ishang.beauty.entity;

import java.io.Serializable;
import java.util.Date;

public class BlogComment implements Serializable {
    private Integer id;

    private Integer userid;

    private Integer blogid;

    private Integer cmtid;

    private String comment;

    private Date createtime;

    private Integer likenum;

    private Boolean delFlag;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
    public void setUserid(String str) {
        this.userid = Integer.parseInt(str);
    }

    public Integer getBlogid() {
        return blogid;
    }

    public void setBlogid(Integer blogid) {
        this.blogid = blogid;
    }
    public void setBlogid(String str) {
        this.blogid = Integer.parseInt(str);
    }

    public Integer getCmtid() {
        return cmtid;
    }

    public void setCmtid(Integer cmtid) {
        this.cmtid = cmtid;
    }
    public void setCmtid(String str) {
        this.cmtid =Integer.parseInt(str);
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
    public void setCreatetime(String str) {
        this.createtime = new Date();
    }

    public Integer getLikenum() {
        return likenum;
    }

    public void setLikenum(Integer likenum) {
        this.likenum = likenum;
    }

    public Boolean getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Boolean delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", userid=").append(userid);
        sb.append(", blogid=").append(blogid);
        sb.append(", cmtid=").append(cmtid);
        sb.append(", comment=").append(comment);
        sb.append(", createtime=").append(createtime);
        sb.append(", likenum=").append(likenum);
        sb.append(", delFlag=").append(delFlag);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}