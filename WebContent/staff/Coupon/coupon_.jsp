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
<div class="coupon">
    <button name="coupon make" onclick="location.href='/Coupon/coupon_make.jsp'">クーポン作成</button>
    <button name="coupon delete">クーポン削除</button>
</div>
<body>

    <footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
    <c:import url="../../common/base.jsp">
    </c:import>

    </footer>
</body>
</html>
