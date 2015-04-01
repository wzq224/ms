<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<title>LOGIN</title>
</head>
<jsp:include page="common/allscript.jsp" />

<script type="text/javascript">
$(document).ready(function(){
	$('#errorFlag').hide();
	  $("#login").click(function(){
			$.ajax({
			    type : "post",
				url : "/ms2/user/checkLogin",
				dataType:"json",
				data:$('#loginForm').serialize(),
				success : function(data) {
					if(null != data){
						
						$.cookie("uid", data.uid,{expires:1,path:"/"});
						$.cookie("uname", data.uname,{expires:1,path:"/"}); 
						location.href = "/ms2/user/all";
					}else{
						$('#errorFlag').show();
						//alert("error");
					}
				}
				
			});	 
		});
	  
	  $("#cancel").click(function(){
			alert("llll");
		});
});


</script>
<body>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9">
				<div class="row-fluid">
					<div class="page-header">
						<h1>LOGIN</h1>
					</div>
					<form id="loginForm" class="form-horizontal"
						action="/ms2/user/login" method="post">
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
									<input type="password" class="input-xlarge" id="name"
										name="pwd" />
								</div>
							</div>

							<!-- <div class="control-group">
								<label class="control-label" for="name"></label>
								<div class="controls">
									<input type="submit" class="btn btn-success" id="Submit"
										value=" Login " /> <input type="submit"
										class="btn btn-success" id="Submit" value=" Cancle" />
								</div>
							</div> -->

							<div class="control-group">
								<div class="controls">
									
									<a href="#" class="btn btn-success" id="login">Login</a>
								<!-- 	<a href="#" class="btn btn-success" id="cancel">Cancel</a> -->
								<p id="errorFlag">登录失败</p>
								</div>
							</div>
							
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
