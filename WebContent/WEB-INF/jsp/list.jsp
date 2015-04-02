<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<title>Atricle LIst</title>
</head>
<jsp:include page="common/allscript.jsp" />
<script type="text/javascript">
	$(document).ready(
			function() {
				$("#newForm").hide();
				$("#newBtn").click(function() {
					$("#newForm").slideToggle();
				})

				$("#newSubmit").click(function() {
				
					$("#uidInput").val($.cookie("uid"));
					
					$("#newForm").submit();
				})

				$.ajax({
					type : "get",
					url : "/ms2/cate/all",
					dataType : "json",
					//data:$('#loginForm').serialize(),
					success : function(msg) {
						if (null != msg) {
							/* for(i in msg){
								alert(msg[i].uname);
							} */
							var listHtml = "";
							$.each(msg, function(i, m) {
								listHtml += "<tr class='list-users'><td>"
										+ m.cid + "</td>";
										
								listHtml += "<td><a href='/ms2/article/list?cid="+m.cid+"'>" + m.cname + "</a></td>";
								listHtml += "<td>" + m.uid + "</td>";
								listHtml += "<td>" + m.uname + "</td>";
								listHtml += "<td>" + m.ctime + "</td>";

								listHtml += "</tr>"
							});

							$('#list').html(listHtml);
						} else {
							location.href = "/ms2/cate/page";
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
							类别 <small>All Cates</small>
						</h1>
					</div>
					<table class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>AdminId</th>
								<th>Time</th>
								<th>More</th>
							</tr>
						</thead>
						<tbody id="list">
						</tbody>
					</table>

					<a href="#" class="btn btn-success" id="newBtn">New Cate</a>

					<form id="newForm" class="form-horizontal" action="/ms2/cate/add"
						method="post">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="name">Cate Name</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="cname" name="cname" />
								</div>
							</div>
							<input type="hidden" id="uidInput" name="uid" />
							<div class="control-group">
								<label class="control-label" for="name">new</label>
								<div class="controls">
									<a class="btn btn-success" id="newSubmit">New</a>

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

