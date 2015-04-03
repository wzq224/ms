<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function() {
	CKEDITOR.replace('acontentck');
	$("#newSubmit").click(function(){
		
		$("#uidInput").val($.cookie("uid"));
		$("#articleContentInput").val(CKEDITOR.instances.acontent.getData());
		 $.ajax({
		    type : "post",
			url : "/ms2/article/add",
			dataType:"json",
			data:$('#newArticleForm').serialize(),
			success : function(data) {
				$("#allArticles").click()
			}
			
		}); 
	});
});
</script>


<form id="newArticleForm" class="form-horizontal" action="" method="post" enctype="multipart/form-data">
	<fieldset>
		
		题目：<input type="text" class="input-xlarge" id="articleTitle" name="atitle" />
		<a class="btn btn-success" id="newSubmit">提交</a><br/>
		
		类别：
		<select name="cid">
		<c:forEach items="${cates}" var="c">
		<option value ="${c.cid}">${c.cname}</option>
		</c:forEach>
 
		</select>
		
		<textarea  name="acontentck" id="acontent"></textarea>
		<script type="text/javascript"></script>
		<input type="hidden" id="uidInput" name="uid" />
		<input type="hidden" id="articleContentInput" name="acontent" />
		<div class="control-group">

			<div class="controls"></div>
		</div>

	</fieldset>
</form>