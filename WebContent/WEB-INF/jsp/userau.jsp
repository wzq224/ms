<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript">
	
</script>
<div class="page-header" >
<div class="well sidebar-nav">
<p>已有权限</p>
<form action="/ms2/user/chgAuList/" method="post">
<c:forEach items = "${auList}" var = "au">
<input type="checkbox" name="param" value="${au.cid}" ><big>${au.cname}</big><br/>
</c:forEach>


<input type="hidden" name="flag" value="1">
<input type="submit" class='btn btn-fail' value="取消权限">
</form>
</div>
<!-- <div style="float:left;margin:50,50,50,50">
<br><br>
<div>
<a class='btn btn-fail'></a>
</div>
<br><br>
<div>
<a class='btn btn-success'>B</a>
</div>

</div> -->

<div  class="well sidebar-nav" >
<p>未有权限</p>
<form action="/ms2/user/chgAuList/" method="post">
<c:forEach items = "${uauList}" var = "uau">
<input type="checkbox" name="param" value="${uau.cid}" ><big>${uau.cname}</big><br/>
</c:forEach>
<input type="hidden" name="flag" value="1">
<input type="submit" class='btn btn-success' value="添加权限">
</form>
</div>

</div>
