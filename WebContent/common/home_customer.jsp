<%-- メニューJSP --%>
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
<c:import url="/common/base_customer.jsp">

</c:import>
<div class="button-container">
<form action ="../manager/MapViews.action" method = "post"><input type = "submit" value = "マップ"></form>
<form action ="../manager/Notification_data_customer.action" method = "post"><input type = "submit" value = "お知らせ"></form>
<form action ="../manager/FishCard.action" method = "post"><input type = "submit" value = "魚カード"></form>
<form action ="../manager/CouponCustomer.action" method = "post"><input type = "submit" value = "クーポン"></form>

</body>

</footer>
</html>