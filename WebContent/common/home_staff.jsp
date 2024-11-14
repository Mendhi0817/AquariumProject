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
<div class="button-container">
            <button name="mapPost" onclick="MapPost.action">マップ</button>
            <button name="newsPost" onclick="NewsPost.action">お知らせ投稿</button>



<form action ="../manager/MapPost.action" method = "post"><input type = "submit" value = "マップ"></form>>
<form action ="../manager/NewsPost.action" method = "post"><input type = "submit" value = "お知らせ投稿"></form>


            <button name="newsPost" onclick="location.href='../common/post_submission.jsp'">お知らせ投稿</button>
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/Mendhi0817/AquariumProject.git
            <button name="fishCard" onclick="location.href='../common/fishcard.jsp'">魚カード</button>
            <button name="couponCreate" onclick="location.href='../coupon_make/coupon.html'">クーポン作成</button>
        </form>
</body>

</footer>
</html>