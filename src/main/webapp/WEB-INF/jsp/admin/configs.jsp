<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/jspf/admin/head.jspf" %>
</head>
<body>
<h1>Configs</h1>
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
            			url: "/admin/configs",
            			data: filter,
            			dataType: "JSON"
            		});
            	},
            	insertItem: function(value) {
            		return $.ajax({
            			type: "POST",
            			url: "/admin/configs",
            			data: value,
            			dataType: "JSON"
            		});
				},
				updateItem: function(value) {
            		return $.ajax({
            			type: "POST",
            			url: "/admin/configs",
            			data: value,
            			dataType: "JSON"
            		});
				},
				deleteItem: function(a, b, c) {
					console.log("insert");
				}
            },
            fields: [
                { name: "key", type: "text", width: 150, validate: "required" },
                { name: "value", type: "textarea", width: 500 },
//                { name: "Address", type: "number", width: 200 },
//                { name: "Country", type: "select", items: countries, valueField: "Id", textField: "Name" },
//                { name: "Married", type: "checkbox", title: "Is Married", sorting: false },
                { type: "control" }
            ]
        });
    });
</script>
</body>
</html>