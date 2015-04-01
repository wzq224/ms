<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<title>用户</title>
</head>
<jsp:include page="common/allscript.jsp" />
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
	    type : "get",
		url : "/ms2/user/all",
		dataType:"json",
		//data:$('#loginForm').serialize(),
		success : function(msg) {
			if(null != msg){
				/* for(i in msg){
					alert(msg[i].uname);
				} */
				
				$.each(msg,function(i,user){
					alert(i+" "+user.uname);
				});
				
				
				//$.cookie("uid", data.uid,{expires:1,path:"/"});
				//$.cookie("uname", data.uname,{expires:1,path:"/"}); 
				//location.href = "/ms2/user/all";
			}else{
				//$('#errorFlag').show();
				//alert("error");
			}
		}
	});
});
</script>

<body>
	<jsp:include page="common/header.jsp" />

	<div class="container-fluid">
		<div class="row-fluid">

			<jsp:include page="common/sidebar.jsp" />

			<div class="span9">
				<div class="row-fluid">
					<div class="page-header">
						<h1>
							用户 <small>All users</small>
						</h1>
					</div>
					<table class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Role</th>
								<th>Time</th>
								<th>More</th>
							</tr>
						</thead>
						<tbody>
							<tr class="list-users" id="userList">
								<!-- <td>1</td>
								<td>Admin</td>
								<td>Admin</td>
								<td>Admin</td>
								<td><span class="label label-success">Active</span></td>
								<td>
									<div class="btn-group">
										<a class="btn btn-mini dropdown-toggle" data-toggle="dropdown"
											href="#">Actions <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#"><i class="icon-user"></i> Details</a></li>
											<li><a href="#"><i class="icon-pencil"></i> Edit</a></li>
											<li><a href="#"><i class="icon-trash"></i> Delete</a></li>
											<li class="nav-header">Permissions</li>
											<li><a href="#"><i class="icon-lock"></i> Make <strong>Admin</strong></a></li>
											<li><a href="#"><i class="icon-lock"></i> Make <strong>Moderator</strong></a></li>
											<li><a href="#"><i class="icon-lock"></i> Make <strong>User</strong></a></li>
										</ul>
									</div>
								</td> -->
							</tr>
						
							
						
						</tbody>
					</table>
					<div class="pagination">
						<ul>
							<li><a href="#">Prev</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
					<a href="new-user.html" class="btn btn-success">New User</a>
				</div>
			</div>
		</div>
		<jsp:include page="common/footer.jsp" />

	</div>


<!-- 	<script>
		$(document).ready(function() {
			$('.dropdown-menu li a').hover(function() {
				$(this).children('i').addClass('icon-white');
			}, function() {
				$(this).children('i').removeClass('icon-white');
			});

			if ($(window).width() > 760) {
				$('tr.list-users td div ul').addClass('pull-right');
			}
		});
	</script> -->
</body>
</html>

