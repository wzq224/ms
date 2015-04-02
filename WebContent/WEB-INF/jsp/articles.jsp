<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#newBtn").click(function() {
		$.ajax({
			type : "get",
			url : "/ms2/article/new",
			success : function(msg) {
				$("#content").html(msg);
			}
		});
	});
});
</script>
<div class="page-header">
	<h1>
		文章 <small>All articles </small> <a href="javascript:void(0)"
			class="btn btn-success" id="newBtn">New</a>
	</h1>

</div>

	
<table class="table table-striped table-bordered table-condensed">
	<thead>
		<tr>
			<th>A.ID</th>
			<th>title</th>
			<th>content</th>
			<th>Time</th>
			<th>More</th>
		</tr>
	</thead>
	<tbody id="userList">

		<c:forEach items="${articles}" var="a">
			<tr class='list-users'>
				<td>${a.aid}</td>
				<td>${a.atitle}</td>
				<td>${a.acontent}</td>
				<td>${a.atime}</td>
				
			</tr>
		</c:forEach>
	</tbody>
</table>



