<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

	$(document).ready(function() {
		$('#logout').click(function() {
			$.cookie("uid", null, {
				expires : 0,
				path : "/"
			});
			$.cookie("uname", null, {
				expires : 0,
				path : "/"
			});
			location.href = "/ms2/user/";
		});
		var uname = $.cookie("uname");
		$('#uname').html(uname);
		
		checkLogin();
		
	})
</script>
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a> 
			<a class="brand" href="#" >Admin</a>
			<div class="btn-group pull-right" >
				<a class="btn" href="#" >
					<i class="icon-user"></i>
					<abbr id="uname"></abbr>
				</a> 
				<a class="btn dropdown-toggle" data-toggle="dropdown" href="#"> 
					<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<!-- <li><a href="my-profile.html">个人资料</a></li> -->
					<!-- <li class="divider"></li> -->
					<li><a id="logout" href="#">退出</a></li>
				</ul>
			</div>
			<!-- <div class="nav-collapse">
				<ul class="nav">
					<li><a href="index.html">首页</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">用户 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="new-user.html">新建用户</a></li>
							<li class="divider"></li>
							<li><a href="users.html">管理用户</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">角色 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="new-role.html">新建角色</a></li>
							<li class="divider"></li>
							<li><a href="roles.html">管理角色</a></li>
						</ul></li>
					<li><a href="stats.html">统计</a></li>
				</ul>
			</div> -->
		</div>
	</div>
</div>
