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
	$("#newUserForm").hide();
	$("#newUserBtn").click(function(){
		$("#newUserForm").slideToggle();
	})
	
	$("#errorFlag").hide();
	$("#newUserSubmit").click(function(){
		if($("#pwd").val != $("#confirm").val){
			$("#errorFlag").show();
		}else{
			$("#newUserForm").submit();
		}
	})
	
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
				var userListHtml = "";
				$.each(msg,function(i,user){
					userListHtml += "<tr class='list-users'><td>"+user.uid+"</td>";
					userListHtml += "<td>"+user.uname+"</td>";
					userListHtml += "<td>"+user.suFlag+"</td>";
					userListHtml += "<td>"+user.utime+"</td>";
					if(user.suFlag){
						userListHtml += "<td><a class='btn btn-success' href='/ms2/user/chgType?uid="+user.uid+"&suFlag=0'>cancel admin</a></td>"
					}else{
						userListHtml += "<td><a class='btn btn-success' href='/ms2/user/chgType?uid="+user.uid+"&suFlag=1'>make admin</a></td>"
						
					}
					userListHtml +="</tr>"
				});
				
				$('#userList').html(userListHtml);		
			}else{
				location.href = "/ms2/user/";
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
								<th>Admin</th>
								<th>Time</th>
								<th>More</th>
							</tr>
						</thead>
						<tbody id="userList">
						</tbody>
					</table>
					
					<a href="#" class="btn btn-success" id="newUserBtn">New User</a>
					
					<form id="newUserForm" class="form-horizontal"
						action="/ms2/user/add" method="post">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="name">User</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="name" name="uname" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="name">Pwd</label>
								<div class="controls">
									<input type="password" class="input-xlarge" id="pwd"
										name="pwd" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="name">Confirm</label>
								<div class="controls">
									<input type="password" class="input-xlarge" id="confirm"
										name="confirm" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="name">Type</label>
								<div class="controls">
								   
									<input type="radio" class="input-xlarge" id="name"
										name="suFlag" />Admin
									
									<input type="radio" class="input-xlarge" id="name"
										name="suFlag" />Normal
								</div>
							</div>

			                
							<div class="control-group">
								<label class="control-label" for="name">new</label>
								<div class="controls">
								<a class="btn btn-success" id="newUserSubmit">New</a>
								 <p id="errorFlag">密码不一致</p>
								</div>
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="common/footer.jsp" />

	</div>
</body>
</html>

