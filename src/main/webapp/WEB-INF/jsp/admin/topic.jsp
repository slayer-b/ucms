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
<h1>Configs</h1>
<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="/admin"/>">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/admin/configs.html"/>">config</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/admin/topic.html"/>">topics</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">Disabled</a>
            </li>
        </ul>
    </div>
</nav>
<div class="row pl-3">
    <div id="jsGrid"></div>
</div>

<script>
    $(document).ready(function () {
        $("#jsGrid").jsGrid({
            width: "100%",
            height: "400px",

            inserting: true,
            editing: true,
            sorting: true,
            paging: true,

            autoload: true,
            pageLoading: true,

            controller: {
            	loadData: function(filter) {
            		return $.ajax({
            			type: "GET",
            			url: "/admin/topic",
            			data: filter,
            			dataType: "JSON"
            		});
            	},
            	insertItem: function(value) {
            		return $.ajax({
            			type: "POST",
            			url: "/admin/topic",
            			data: value,
            			dataType: "JSON"
            		});
				},
				updateItem: function(value) {
            		return $.ajax({
            			type: "POST",
            			url: "/admin/topic",
            			data: value,
            			dataType: "JSON"
            		});
				},
				deleteItem: function(a, b, c) {
					console.log("insert");
				}
            },
            fields: [
                { name: "name", type: "text", width: 50, editing: false },
                { name: "value", type: "textarea", width: 550 },
                { name: "active", type: "checkbox", width: 50, sorting: false },
                { type: "control" }
            ]
        });
    });
</script>
</body>
</html>