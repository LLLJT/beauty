## user
### 1、登录  login(*params*)

登录成功，转到index.jsp；

登录失败，高亮错误项，返回错误信息。

> - username
> -  password

### 2、注册  adduser(*params*)

前端有required字段未填写时，不可提交。

添加成功，转到userList.jsp；

添加失败，高亮错误项，返回错误信息。

> - <font color='red'>(required)</font>userid
>   - 不需要赋值
> - <font color='red'>(required)</font>username 
> - <font color='red'>(required)</font>password
> - <font color='red'>(required)</font>roleid 
>   - 前端表现为下拉框&rolename，后端值为id *<font color='blue'>dtype='int'</font>*，默认值为2 user
> - sex （前端下拉框，后端id *<font color='blue'>dtype='boolean'</font>*）
> - birthday
> - school
> - introdution
> - profileimg（前端无上传口，直接赋值默认头像）
> - del_flag
>   - get前端model时，**setDelFlag=true**

### 3、修改密码 updateone(*params*)

前台有required字段未填写时，不可提交；

两次pswd输入不一致，清空pswd框，高亮，并返回错误提示。

修改成功，alert 成功msg。

ajax，alert在当前界面(usercenter.jsp/我的设置)上

或者alert在usercenter.jsp上。

> - <font color='red'>(required)</font>userid
>   - 不需要赋值
> - password1
> - password2

### 4、修改头像 updateone(*params*)

修改成功，alert 成功msg；

修改失败，alert “修改失败”。

> - <font color='red'>(required)</font>userid
>   - 不需要赋值
> - <font color='red'>(required)</font>profileimg
>   - （前端上传图片文件，后端储存图片流🤙）



### 5、删除 deleteuser(*params*)

删除成功，alert 成功msg；

删除失败，alert “删除失败”。

ajax，alert显示在userList页面上。

> <font color='red'>(required)</font>userid

### 6、更改个人信息 updateone(*params*)

前台有required字段未填写时，不可提交；

修改成功，alert 成功msg。

ajax，alert在当前界面(usercenter.jsp/个人信息)上

或者alert在usercenter.jsp上。

> - <font color='red'>(required)</font>userid
>   - 不需要赋值
>
> - 其他字段
>   - BaseResultMap

### 6、获取用户列表 findall()

从数据库获取user list，传到userList.jsp

### 7、模糊查找用户 findlike(*params*)

根据前端关键词，模糊查找user(list)

传到userList.jsp

> - <font color='red'>(required)</font>username 
>   - 前端用户名关键词

### 8、获取关注数和关注列表

1. **关注数**

    return: **follows** <font color='blue'>dtype='int'</font>

    ```mysql
    SELECT COUNT(*) as follows FROM `follow`
    where followerid=2;
    ```

1. **关注列表** 

    return: **followlist** <font color='blue'>dtype='List\<User\>'</font>
    
    按时间排序。
    
    ```mysql
    SELECT * from `user`
    WHERE id in (SELECT id FROM `follow` WHERE followerid=2);
    ```


### 9、获取粉丝数和粉丝列表

1. **粉丝数** 

    return: **fans** <font color='blue'>dtype='int'</font>
    
    ```mysql
      SELECT COUNT(*) as fans FROM `follow`
      WHERE uploaderid=3;
    ```

1. **粉丝列表** 

    return: **fanlist** <font color='blue'>dtype='List\<User\>'</font>
    
    按时间排序。
    
    ```mysql
    SELECT * from `user`
    WHERE id in (SELECT id FROM `follow` WHERE uploaderid=3);
    ```

### 10、获取收藏blog数量与列表


1. **收藏数** 

    return: **stars** <font color='blue'>dtype='int'</font>
    
    ```mysql
    SELECT COUNT(*)as stars FROM `blog_star`
WHERE userid = 2;
    ```

1. **收藏列表** 

    return: **starlist** <font color='blue'>dtype='List\<Blog\>'</font>
    
    按时间排序。
    
    ```mysql
    SELECT * from `blog`
    WHERE id in (SELECT blogid FROM `blog_star` WHERE userid = 2);
    ```





## role

### 1、CRUD

不需要模糊查找



## blog

### 1、CRUD

### 2、模糊查找

#### 		1. 按照标题关键词查找

​			即搜索功能。

​			前端：图标/列表显示。

#### 		2. 按照发布者查找（时间/热度）

​			热度暂定为收藏数。

​			前端：顺序/逆序显示。

### 3、按ID查找

### 4、获取推荐列表

return: bloglist <font color='blue'>dtype='List\<Blog\>'</font>

```mysql
SELECT * FROM `blog`
WHERE rec_flag=1
```

### 5、获取被收藏数

return: **starmakers** <font color='blue'>dtype='int'</font>

```mysql
SELECT COUNT(*)as starmakers FROM `blog_star`
WHERE blogid = 1;
```

### 6、获取评论数

return: **cmts** <font color='blue'>dtype='int'</font>

```mysql
SELECT COUNT(*) as cmts FROM `comment`
WHERE blogid=2;
```



## blog_type

### 1、CRUD

不需要模糊查找



## comment

### 1、添加评论  addcmt(*params*)

在某blog下添加评论，

添加成功，返回该blog页面。

> - <font color='red'>(required)</font>id
>   - 不需要赋值
> - <font color='red'>(required)</font>userid
> - <font color='red'>(required)</font>blogid
> - <font color='red'>(required)</font>comment
>   - user填写
> - del_flag
>   - get前端model时，**setDelFlag=true**

### 2、删除自己的评论  deletecmt(*params*)

加载评论列表时，如果该评论的userid==当前userid，显示删除按钮。

删除成功，返回当前blog页面；

删除失败，alert失败msg。

> - <font color='red'>(required)</font>id

### 3、评论列表  findall()

前台不需要用到。

### 4、查询某blog下所有评论 findlike(*params*)

加载当前blog的cmtList

> - <font color='red'>(required)</font>blogid

### 5、查看某评论的回复&添加回复 

blog的cmtList平铺在页面上，

楼中楼(reply)加载在模态框(Modal)中。

点击该评论下“查看回复”按钮，弹出modal，**向modal传参**：cmtid

1. **查看回复**  findreply(*params*)

   加载当前评论的replyList。

   > - <font color='red'>(required)</font>cmtid

   ```mysql
   SELECT * FROM `comment`
   WHERE cmtid=7
   ```

2. **添加回复**  addcmt(*params*)

   为当前评价添加一个reply。

   添加成功，alert成功msg；

   添加失败，alert失败msg；

   返回该blog页面。

   > - <font color='red'>(required)</font>id
   >   - 不需要赋值
   > - <font color='red'>(required)</font>userid
   > - <font color='red'>(required)</font>blogid
   > - <font color='red'>(required)</font>**cmtid**
   > - <font color='red'>(required)</font>comment
   >   - user填写
   > - del_flag
   >   - get前端model时，**setDelFlag=true**

   



## utils

### 1、记住密码

*方法待确定。*

### 2、图片以流方式储存

*方法待确定。*

### 3、分页

*方法待确定。*

### 4、密码以md5储存

*可选，方法待确定。*