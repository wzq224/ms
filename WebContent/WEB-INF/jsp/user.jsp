<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#newUserForm").hide();
		$("#newUserBtn").click(function() {
			$("#newUserForm").slideToggle();
		});

		$("#errorFlag").hide();
		$("#newUserSubmit").click(function() {
			if ($("#pwd").val != $("#confirm").val) {
				$("#errorFlag").show();
			} else {
				$.ajax({
					type : "post",
					url : "/ms2/user/add",
					dataType : "json",
					data : $('#newUserForm').serialize(),
					success : function(data) {

						$("#allUsers").click();
					}

				});
				//alert("ss");
			}
		});
	});
</script>
<div class="page-header">
	<h1>
		用户 <small>All users </small> <a href="javascript:void(0)"
			class="btn btn-success" id="newUserBtn">New User</a>
	</h1>

	<form id="newUserForm" class="form-horizontal" action=""
		method="post">
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
					<input type="password" class="input-xlarge" id="pwd" name="pwd" />
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

					<input type="radio" class="input-xlarge" id="name" name="suFlag" />Admin

					<input type="radio" class="input-xlarge" id="name" name="suFlag" />Normal
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

		<c:forEach items="${users}" var="u">
			<tr class='list-users'>
				<td>${u.uid}</td>
				<td><a href="/ms2/user/allau?uid=${u.uid}">${u.uname}</a></td>
				<td>${u.suFlag}</td>
				<td>${u.utime}</td>
				<td>
				<c:if test="${!u.suFlag}">
				<a class='btn btn-success'
					href='/ms2/user/chgType?uid=${u.uid}&suFlag=1'>make admin</a>
				
				</c:if>
				<c:if test="${u.suFlag}">
				<a class='btn btn-fail'
					href='/ms2/user/chgType?uid=${u.uid}&suFlag=0'>unset admin</a>
				</c:if>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>



