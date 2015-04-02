<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function() {
	$("#newSubmit").click(function(){
		
	});
});
</script>


<form id="newForm" class="form-horizontal" action="" method="post">
	<fieldset>
		
		<input type="text" class="input-xlarge" id="cname" name="cname" />
		<a class="btn btn-success" id="newSubmit">提交</a>

		<textarea name="content" id=">.</textarea>
		<script type="text/javascript">CKEDITOR.replace('editor01');</script>
		<input type="hidden" id="uidInput" name="uid" />
		<div class="control-group">

			<div class="controls"></div>
		</div>

	</fieldset>
</form>