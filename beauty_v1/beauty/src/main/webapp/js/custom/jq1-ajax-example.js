$.ajax({
	url: '/comment/normal/add',
	type: 'post',
	dataType:'JSON',
	data: {"userid": $("#userid").val(), "blogid" : $("#blogid").val() , "comment" :$("#comment").val()},
	success:function(response,status,xhr){
		console.log(response)
		console.log(status)
		console.log(xhr)
	},
	error:function(){
		alert("error");
	}
});

$.ajax({
	url: 'comment/normal/add',
	type: 'post',
	dataType:'JSON',
	data:{"userid": userid, "blogid" : blogid , "comment" :comment, "cmtid":cmtid }  ,
	success:function(response,status,xhr){
		console.log(response)
		console.log(status)
		console.log(xhr)
	},
	error:function(){
		alert("error");
	}
});