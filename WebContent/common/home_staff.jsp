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
<c:import url="/common/base.jsp">

</c:import>
<<<<<<< HEAD
<div class="button-container">
=======


<form action ="../manager/MapPost.action" method = "post"><input type = "submit" value = "マップ"></form>>
<form action ="../manager/NewsPost.action" method = "post"><input type = "submit" value = "お知らせ投稿"></form>
            <button name="fishCard" onclick="location.href='../common/fishcard.jsp'">魚カード</button>
            <button name="couponCreate" onclick="location.href='../coupon_make/coupon.html'">クーポン作成</button>
        </form>
</body>

</footer>
</html>