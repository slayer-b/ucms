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

<hr>

<div class="container">
    <div class="row">
        <div class="col-sm-8">
            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#"><b>Ryan Haywood</b></a>
                            made a post.
                        </div>
                        <h6 class="text-muted time">1 minute ago</h6>
                    </div>
                </div>
                <div class="post-description">
                    <p>Bootdey is a gallery of free snippets resources templates and utilities for bootstrap css hmtl js framework. Codes for developers and web designers</p>
                    <div class="stats">
                        <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-thumbs-up icon"></i>2
                        </a>
                        <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-thumbs-down icon"></i>12
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-8">
            <div class="panel panel-white post panel-shadow">
                <div class="post-heading">
                    <div class="pull-left image">
                        <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image">
                    </div>
                    <div class="pull-left meta">
                        <div class="title h5">
                            <a href="#"><b>Ryan Haywood</b></a>
                            made a post.
                        </div>
                        <h6 class="text-muted time">1 minute ago</h6>
                    </div>
                </div>
                <div class="post-description">
                    <p>Bootdey is a gallery of free snippets resources templates and utilities for bootstrap css hmtl js framework. Codes for developers and web designers</p>
                    <div class="stats">
                        <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-thumbs-up icon"></i>2
                        </a>
                        <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-thumbs-down icon"></i>12
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>