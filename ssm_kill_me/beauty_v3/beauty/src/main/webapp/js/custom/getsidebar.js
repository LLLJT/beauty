/*
 * target = "<%=path %>/side/getrec"
 * or = "<%=path %>/side/getupdate"
 * */

function getsidebar(target,userid) {

	if(userid!="") target += ("?userid=" + userid)
	console.info(target)
	
	$.ajax({
		url: target,
		type: 'GET',
		dataType:'JSON',
		success:function(response,status,xhr){
			console.log(response)
			console.log(status)
			console.log(xhr)
			afterajax(response,userid)
		},
		error:function(){
			alert("error");
		}
	});
}

function afterajax(data, userid) {
	var n = data.rstlist.length
	var myhtml=""
	for (i=0; i<n; i++){
		var id = data.rstlist[i].id
		var title = data.rstlist[i].title
		var createtime = data.rstlist[i].createtime
		var picurl =  data.rstlist[i].picUrl1
		picurl = testpicurl
		
		var date=new Date(parseInt(createtime)* 1000);
		var mon = date.getMonth()+1;
        var day = date.getDate();
        var hours = date.getHours();
        var minu = date.getMinutes();
        
        createtime=(mon+'/'+day+' '+hours+':'+minu)
        console.info(createtime)
		
        myhtml +=( '<div class="row sidebar-post blogcontent my-4" id="' + id + '" onclick="opencontent(this)">'
        		+ '<div class="col-md-4">'
        		+ '<img class="sb-img" src="' + picurl + '" alt="Alt">'
        		+ '</div>'
        		+ '<div class="col-md-8 sidebar-post-content  ">'
        		+ '<h4>' + title + '</h4>'
        		+ '<div class="blog-meta-main">'
        		+ '<span class="post-meta-link"><i class="fa fa-clock-o"></i> 更新于 ' + createtime + '</span>'
        		+ '</div> </div> </div>'
        		)
	}
	rstdiv.innerHTML=myhtml	
}

function opencontent(obj) {
	/* console.info(obj); */
	console.info(obj.id);
	var url='/beauty/content?blogid=' +obj.id
	console.info(url)
	window.location.href=url
}