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
	getAllArticles();
	
});

function getAllArticles(){
	$.ajax({
	    type : "get",
		url : "/ms2/article/all2",
		dataType:"json",
		success : function(data) {
			$.each(data,function(i,a){
				$("#aid"+a.aid).click(function(){
					getArticleByAid(a.aid);
				});
			});
			
		}
		
	});	
}

function getArticleByAid(aid){
	$.ajax({
		type : "get",
		url : "/ms2/article/detial",
		data : {"aid":aid},
		success : function(data) {
			//alert(data);
			$("#content").html(data);
		}
	});
}

</script>
<div class="page-header">
	<h1>
		文章 <small>类别：${cname}</small> <a href="javascript:void(0)"
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
				<td>${a.uname}</td>
				<td>${a.cname}</td>
				<td><a href="javascript:void(0)" id="aid${a.aid}">${a.atitle}</a></td>
				<td>${a.acontent}</td>
				<td>${a.atime}</td>
				
			</tr>
		</c:forEach>
	</tbody>
</table>



