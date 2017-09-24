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

<div class="row">
	<div class="col-sm-1">
	</div>
	<div class="col-sm-7">
		${texts['main']}
	</div>
    <div class="col-sm-3">
        <h3 style="background-color: darkblue;color: white;">Бобро пожаловать</h3>
        Тут будет какой-то оЧЧень важный текст, я серьезно !!!
        <div class="mt-1"><a class="btn btn-lg btn-success">Подать заявку</a></div>
        <div class="mt-1"><a class="btn btn-lg btn-success">Присоедениться</a></div>
        <div class="mt-1"><a class="btn btn-lg btn-success">Сами понимаете</a></div>
    </div>
    <div class="col-sm-1"></div>
</div>

</body>
</html>