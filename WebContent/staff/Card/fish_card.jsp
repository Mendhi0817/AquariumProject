<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>



<head>
<style>
.button-container {
		text-align:center;
		margin:20px 0;}
</style>
</head>

<body>

<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="/common/base.jsp">

</c:import>

    <div class="container">

</div>

<div>
    <form action ="../manager/FishCardMake.action" method = "post"><input type = "submit" value = "作成"></form>
    <form action ="../manager/FishCardView.action" method = "post"><input type = "submit" value = "一覧"></form>
</div>


</div>

</body>
</html>