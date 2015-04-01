<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<title>Home</title>
</head>

<jsp:include page="common/allscript.jsp" />

<body>
	<jsp:include page="common/header.jsp" />

	<div class="container-fluid">
		<div class="row-fluid">

			<jsp:include page="common/sidebar.jsp" />

			<div class="span9">
				<div class="row-fluid">
					<div class="page-header">
						<h1>
							网站统计 <small>网站统计 </small>
						</h1>
					</div>
					<div id="placeholder" style="width: 80%; height: 300px;"></div>
					<br />
					<div id="visits" style="width: 80%; height: 300px;"></div>
				</div>
			</div>
		</div>

		<jsp:include page="common/footer.jsp" />
	</div>

</body>
</html>

