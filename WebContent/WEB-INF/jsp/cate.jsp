<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript">
	$(document).ready(function() {
		$("#newForm").hide();
		$("#newBtn").click(function() {
			$("#newForm").slideToggle();
		});

		$("#newSubmit").click(function() {
			$("#uidInput").val($.cookie("uid"));
			//$("#newForm").submit();
			
			$.ajax({
			    type : "post",
				url : "/ms2/cate/add",
				dataType:"json",
				data:$('#newForm').serialize(),
				success : function(data) {
					
					$("#allCates").click()
				}
				
			});	 
		});
		
		getAllCates();
	
	});
	
	function getAllCates(){
		$.ajax({
		    type : "get",
			url : "/ms2/cate/all2",
			dataType:"json",
			success : function(data) {
				$.each(data,function(i,c){
					$("#cid"+c.cid).click(function(){
						getArticlesByCid(c.cid);
					});
				});
				
			}
			
		});	
	}
	
	function getArticlesByCid(cid){
		$.ajax({
			type : "get",
			url : "/ms2/article/list",
			data : {"cid":cid},
			success : function(data) {
				//alert(data);
				$("#content").html(data);
			}
		});
	}
	
</script>
<div class="page-header">
	<h1>
		类别 <small>All Cates</small> 
		<a href="javascript:void(0)" class="btn btn-success"
			id="newBtn">New Cate</a>

	</h1>

	<form id="newForm" class="form-horizontal" action=""
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
				
				<div class="controls">
					<a class="btn btn-success" id="newSubmit">New</a>

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
			<th>AdminId</th>
			<th>AdminName</th>
			<th>Time</th>
			<th>More</th>
		</tr>
	</thead>
	<tbody id="cateList">
		<c:forEach items="${cates}" var="c">
	<tr class='list-users'>
            <td>${c.cid}</td>
            <td><a href="javascript:void(0)" id="cid${c.cid}">${c.cname}</a></td>
            <td>${c.uid}</td>
            <td>${c.uname}</td>
            <td>${c.ctime}</td>
            <td><a class='btn btn-success' href=''></a></td>
        </tr>
     </c:forEach>
	</tbody>
</table>


