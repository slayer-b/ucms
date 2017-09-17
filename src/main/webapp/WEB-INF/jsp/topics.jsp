<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${texts['main.title']}</title>
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/jsgrid.min.css"/>">
    <script src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
    <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/js/jsgrid.min.js"/>"></script>
    <style>
    	.nav-white {
    		color: white !important;
		}
    </style>
</head>
<body>
<%@ include file="/WEB-INF/jspf/nav.jspf" %>

<div class="container">
	<h1 class="mt-4">Темы для обсуждений</h1>
	<hr>
    <div class="col-sm-11 ml-2 mt-2">
		<c:forEach items="${topics}" var="item">
			<div class="row">
				<div class="col-md5">
					<h3>${item.name}</h3>
					<div>${item.value.substring(0, 100)}...</div>
					<div><a class="btn btn-primary" href="/topics/${item.name}">Перейти</a></div>
				</div>
			</div>
			<hr>
		</c:forEach>
    </div>
    <div class="col-sm-1"></div>
</div>
</body>
</html>