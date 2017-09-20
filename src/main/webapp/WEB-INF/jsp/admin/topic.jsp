<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/jspf/admin/head.jspf" %>
</head>
<body>
<h1>Topics</h1>
<%@ include file="/WEB-INF/jspf/admin/nav.jspf" %>
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
                { name: "id", type: "text", width: 5, editing: false },
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