<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="../home/home J.css">
    <title>水族舘プロジェクト</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* ビューポートの高さを最小限に設定 */
            margin: 0; /* デフォルトのマージンをリセット */
        }
        header {
            /* ヘッダーのスタイルを追加する場合はここに */
        }
        footer {
            margin-top: auto; /* フッターを画面の下に固定 */
            background-color: #78e3fb; /* 背景色を設定（任意） */
            text-align: center; /* 中央揃え（任意） */
            padding: 10px; /* 内側の余白（任意） */
        }
        .button-container {
            text-align: center; /* ボタンを中央揃え */
            margin: 20px 0; /* ボタンの上下マージン */
        }
    </style>
</head>

<body>
<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="/common/base.jsp">
</c:import>
    <div class="container">

        <div class="button-container">
            <button name="mapPost" onclick="location.href='../staff/Map/map_submission.jsp'">マップ</button>
            <button name="newsPost" onclick="location.href='../news_post/notice post.html'">お知らせ投稿</button>
            <button name="fishCard" onclick="location.href='../fish_card/fish card.html'">魚カード</button>
            <button name="couponCreate" onclick="location.href='../coupon_make/coupon.html'">クーポン作成</button>
        </div>
    </div>
</body>
</html>