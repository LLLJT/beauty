//获取cookiehttps://blog.csdn.net/weixin_44540229/article/details/86519297
function getCookie(cookiename) {
	var name = cookiename + "=";
	var str = document.cookie.split(';');
	var le = str.length;
	for (var i = 0; i < str.length; i++) {
		var ind = str[i];
		while (ind.charAt(0) == ' ')
			ind = ind.substring(1);

		var saf = ind.length;
		if (ind.indexOf(name) != -1)
			return ind.substring(name.length, ind.length);

	}
	return "";

};