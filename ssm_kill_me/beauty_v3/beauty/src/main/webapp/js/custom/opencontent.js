
/* 法一 */
$(function(){
	$(".blogcontent").click(function(e){
		console.info(e.target);
		console.info(e.target.id);
		var url='<%=path%>/content?blogid=' + e.target.id
		console.info(url)
		window.location.href=url
	})
})

/* 法二 */
/*onclick="opencontent(this)
*/function opencontent(obj) {
	/* console.info(obj); */
	console.info(obj.id);
	var url='<%=path%>/content?blogid=' +obj.id
	console.info(url)
	window.location.href=url
}