<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript">
	
</script>
<div class="page-header">
	<h1>
		${article.atitle}<small>${article.cname}</small>
	</h1>
	<h3>AUTHOR:${article.uname}</h3>
		
	${article.acontent}
</div>
