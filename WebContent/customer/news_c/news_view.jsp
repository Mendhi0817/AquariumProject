<%-- メニューJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<head>

</head>

<body>

<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="./common/base_customer.jsp">

</c:import>

<% List<String>  NOTIFICATION_DATA  = (List<String>)request.getAttribute(" NOTIFICATION_DATA "); %>
<h1>今日のイベント</h1>
<br></br>
<% for(String title: NOTIFICATION_DATA ) { %>
        <%= title %><br>
    <% } %>
</footer>
</body>
</html>