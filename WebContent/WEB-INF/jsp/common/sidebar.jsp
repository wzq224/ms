<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="span3">
	<div class="well sidebar-nav">
		<ul class="nav nav-list">
			<li class="nav-header"><i class="icon-user"></i>用户</li>
			<li><a href="javascript:void(0)" id="allUsers">所有用户</a></li>
			<li class="nav-header"><i class="icon-signal"></i>类别</li>
			<li><a href="javascript:void(0)" id="allCates">所有类别</a></li>
		</ul>
	</div>
</div>
<script>
	$(document).ready(function() {
		
		
		$("#allUsers").click(function(){
			getAllAjax("/ms2/user/all");
		});

		$("#allCates").click(function(){
			getAllAjax("/ms2/cate/all");
		});
		
		
	});
	
	function getAllAjax(path){
		
		$.ajax({
			type : "get",
			url : path,
			//dataType : "json",
			success : function(msg) {
				$("#content").html(msg);
			}
		});
	}	
</script>

<!-- <li class="nav-header"><i class="icon-wrench"></i>管理</li>
	<li><a href="/ms2/user/page">用户</a></li>
	<li><a href="roles.html">角色</a></li>
	<li class="nav-header"><i class="icon-signal"></i> 统计</li>
			<li ><a href="stats.html">通用</a></li>
			<li><a href="user-stats.html">用户</a></li>
			<li><a href="visitor-stats.html">访问者</a></li>
			<li class="nav-header"><i class="icon-user"></i> 资料</li>
			<li><a href="my-profile.html">我的资料</a></li>
			<li><a href="#">设置</a></li>
			<li><a href="#">退出</a></li> -->