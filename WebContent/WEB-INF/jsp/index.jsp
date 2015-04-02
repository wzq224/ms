<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<title>NULL</title>
</head>
<jsp:include page="common/allscript.jsp" />
<body>
	<jsp:include page="common/header.jsp" />

	<div class="container-fluid">
		<div class="row-fluid">

			<jsp:include page="common/sidebar.jsp" />

			<div class="span9">
				<div class="row-fluid" id="content">
				<textarea rows="30" cols="30" name="editor01">请输入.</textarea>
				<script type="text/javascript">CKEDITOR.replace('editor01');</script>
				</div>
			</div>
		</div>

		<jsp:include page="common/footer.jsp" />
	</div>

</body>
</html>

