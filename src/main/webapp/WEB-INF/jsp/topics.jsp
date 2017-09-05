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
		.active {
			text-decoration: overline;
		}
    </style>
</head>
<body>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded" style="background-color: darkblue;">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link nav-white" href=".">Домой <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link nav-white" href="<c:url value="topics"/>">Обсуждение</a>
            </li>
            <li class="nav-item">
                <a class="nav-link nav-white disabled" href="#">Disabled</a>
            </li>
        </ul>
    </div>
</nav>
<div class="row">
    <div class="col-sm-11 ml-2 mt-2">
		<c:forEach items="${topics}" var="item">
			<div><a href="?name=${item.name}">${item.name}</a></div>
		</c:forEach>
    </div>
    <div class="col-sm-1"></div>
</div>
</body>
</html>