<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/jspf/admin/head.jspf" %>
</head>
<body>
<h1>Comments</h1>
<%@ include file="/WEB-INF/jspf/admin/nav.jspf" %>
<div class="row pl-3">
    <div id="jsGrid"></div>
</div>

<script>
    $(document).ready(function () {
        $("#jsGrid").jsGrid({
            width: "100%",
            height: "400px",

            inserting: false,
            editing: false,
            sorting: false,
            paging: true,

            autoload: true,
            pageLoading: true,

            controller: {
            	loadData: function(filter) {
            		return $.ajax({
            			type: "GET",
            			url: "/admin/comment",
            			data: filter,
            			dataType: "JSON"
            		});
            	},
				deleteItem: function(a, b, c) {
            		return $.ajax({
            			type: "DELETE",
            			url: "/admin/comment/" + a.id,
            			dataType: "JSON"
            		});
				}
            },
            fields: [
                { name: "id", type: "text", width: 50, editing: false },
                { name: "comment", type: "textarea", width: 550 },
                { name: "topic", type: "text", width: 10 },
                { type: "control" }
            ]
        });
    });
</script>
</body>
</html>