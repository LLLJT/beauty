function deleteconfirm(id) {
	if (confirm("确定要删除吗？")) {
		alert("已删除。")
		//do delete
	} else {
		alert("已取消。")
	}

}