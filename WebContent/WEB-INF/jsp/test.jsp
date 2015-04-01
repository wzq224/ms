<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<script type="text/javascript" src="../js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>

<script type="text/javascript">
$(function() {
	//getjson();
	getCookie();
	
	$("#logout").click(function(){
		$.cookie("uid",null,{expires:0,path:"/"});
		//alert($.cookie("uid"));
	});
});

function getCookie(){
	var loginName = $.cookie('uid');
	
	if(null == loginName){
		alert("Login please");
	}else{
		alert("login ok");
	}
	
}

function getjson() {
	$.ajax( {
		type : "get",
		url : "/ms2/test/json",
		dataType:"json",
		success : function(msg) {
			getCookie();
			alert("Data Saved: " + msg.username+"--"+msg.password);
		}
	});
}


/* 	$(function() {
		var loginName = $.cookie('loginName');
		alert(loginName);
	}); */
</script>

<body>
	<h1>TEST</h1>
	<img src="../img/avatar.jpg" />
	<button id="logout">Logout</button>
</body>
</html>