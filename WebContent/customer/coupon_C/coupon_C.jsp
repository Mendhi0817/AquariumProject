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
<c:import url="/common/base_customer.jsp">

</c:import>

    <script>
        function markAsUsed(couponId) {
            // クーポンが使用された時の処理
            var couponItem = document.getElementById(couponId);
            var button = couponItem.querySelector("button");

            // ボタンを無効化
            button.disabled = true;
            button.style.backgroundColor = "#ccc";  // 無効化後の色

            // クーポンアイテムを「使用済み」状態に
            couponItem.classList.add('used');

            // アラートを表示
            alert(couponId + "が使用されました");
        }

        function goBack() {
            window.history.back();  // 戻る操作
        }
    </script>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>



        <% List<String>  COUPON_DATA  = (List<String>)request.getAttribute(" COUPON_DATA "); %>
	<h1>クーポン</h1>
	<br>
		<% for(String title: COUPON_DATA ) { %>
        	<%= title %><br>
    		<% } %>

        <!-- 戻るボタンをここに追加 -->
        <div class="button-container">
            <button class="back-button" onclick="goBack()">戻る</button>
        </div>
    </div>


</body>
</html>
