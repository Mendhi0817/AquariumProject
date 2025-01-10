<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<title>水族館プロジェクト</title>
<head>
<style>
        .button-container {
            text-align: center;
            margin: 20px 0;
        }

    </style>
</head>
<body>

<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="/common/base.jsp"></c:import>
</footer>
<body>


    <h2>削除したいお知らせを選んで下さい</h2>

            <div class="notification-list">
<!-- listTitle からお知らせタイトルをループで表示 -->
<c:forEach var="listTitle1" items="${listTitle}">
<c:forEach var="listId1" items="${listId}">
<div class="notification-item">
<!-- お知らせタイトルを表示 -->
<span>${listTitle1.COUPON_TITLE}</span>
<span>${listId1.COUPON_ID}</span>
</div>
</c:forEach>
<c:forEach var="coupon" items="${listTitle}">
<c:forEach var="coupon" items="${listId }">
<!-- '編集'ボタンを設置 -->
<form class="delete-btn-1" action="../manager/CouponDeleteExecute.action" method="post">
<input type="hidden" name="COUPON_TITLE" value="${coupon.COUPON_TITLE }">
<input type="hidden" name="COUPON_ID" value="${coupon.COUPON_ID }">
<input type="submit" value="削除">
</form>

                </c:forEach>
               </c:forEach>
               </c:forEach>
</div>

            <form action="../manager/Notification_data_Post.action" method="post">
<input type="submit" value="戻る">
</form>
</main>

</div>

</body>

