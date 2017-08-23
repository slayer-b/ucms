<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/jsgrid.min.css"/>">
    <script src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
    <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/js/jsgrid.min.js"/>"></script>
</head>
<body>
<h1><spring:message code="user.list"/></h1>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>
    </div>
</nav>
<div class="row">
    <div class="col-sm-8">
        <ul>
            <%--@elvariable id="users" type="java.util.List"--%>
            <c:forEach items="${users}" var="user">
                <li>
                    <c:out value="${user.getId()}"/>
                </li>
            </c:forEach>
        </ul>
    </div>
    <div class="col-sm-3">
        <h3 style="background-color: darkslateblue;color: white;">Бобро пожаловать</h3>
        Тут будет какой-то оЧЧень важный текст, я серьезно !!!
        <div class="mt-1"><a class="btn btn-lg btn-success">Подать заявку</a></div>
        <div class="mt-1"><a class="btn btn-lg btn-success">Присоедениться</a></div>
        <div class="mt-1"><a class="btn btn-lg btn-success">Сами понимаете</a></div>
    </div>
    <div class="col-sm-1"></div>
</div>

<a href="<spring:url value="/admin/user_create.html" />"><spring:message code="user.create"/></a>

    <script>

    </script>
</body>
</html>