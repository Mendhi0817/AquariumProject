<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ja">
<head>
    <link rel="stylesheet" href="../News/news.css">
    <title>クーポン一覧</title>
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

        .sidebar {
            text-align: center; /* サイドバー内のコンテンツを中央揃え */
        }

        /* クーポン一覧の幅を狭くして左寄せ */
        .coupon-list {
            margin: 20px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 60%; /* クーポン一覧の幅を60%に設定 */
            margin-left: 0; /* 左寄せ */
        }

        /* 各クーポンアイテムのサイズを小さく */
        .coupon-item {
            background-color: #fff;
            border: 1px solid #ddd;
            margin-bottom: 15px;
            padding: 10px; /* パディングを小さく */
            border-radius: 5px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            font-size: 0.9em; /* フォントサイズを少し小さく */
        }

        .coupon-item h3 {
            font-size: 1.2em; /* クーポンタイトルのサイズを小さく */
            margin-bottom: 10px;
        }

        .coupon-item p {
            font-size: 1em; /* 説明文のフォントサイズを少し小さく */
            color: #555;
            margin-bottom: 15px;
        }

        .button-container {
            display: flex;
            justify-content: center;
        }

        .button-container button {
            padding: 8px 20px; /* ボタンのサイズを小さく */
            font-size: 1em; /* ボタンの文字サイズを小さく */
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
        }

        .button-container button:hover {
            background-color: #ff4500;
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

        footer input[type="submit"] {
            padding: 10px 60px;
            font-size: 1.2em;
            border: none;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            cursor: pointer;
            width: 250px;
        }

        footer input[type="submit"]:hover {
            background-color: #ff4500;
        }

        /* 使用済みのクーポンのスタイル */
        .used {
            background-color: #f1f1f1;
            color: #aaa;
            text-decoration: line-through;
        }

        /* 戻るボタンのスタイル */
        .back-button {
            padding: 10px 30px;
            font-size: 1.2em;
            border: none;
            border-radius: 8px;
            background-color: #ccc;
            color: white;
            cursor: pointer;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #bbb;
        }
    </style>

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

        <div class="coupon-item" id="coupon1">
            <h3>クーポン1</h3>
            <p>このクーポンはお得な割引券です。期限は2024年12月31日まで。</p>
            <div class="button-container">
                <button onclick="markAsUsed('coupon1')">使用</button>
            </div>
        </div>

        <div class="coupon-item" id="coupon2">
            <h3>クーポン2</h3>
            <p>このクーポンは特定商品を無料で提供するクーポンです。期限は2024年11月30日まで。</p>
            <div class="button-container">
                <button onclick="markAsUsed('coupon2')">使用</button>
            </div>
        </div>

        <div class="coupon-item" id="coupon3">
            <h3>クーポン3</h3>
            <p>このクーポンは購入金額が一定額以上で使用可能な割引クーポンです。期限は2024年10月31日まで。</p>
            <div class="button-container">
                <button onclick="markAsUsed('coupon3')">使用</button>
            </div>
        </div>

        <!-- 戻るボタンをここに追加 -->
        <div class="button-container">
            <button class="back-button" onclick="goBack()">戻る</button>
        </div>
    </div>

    <footer>
        <div class="footer-buttons">
            <form action="../manager/Home_customer.action" method="post">
                <input type="submit" value="ホーム">
            </form>
            <form action="../manager/Map.action" method="post">
                <input type="submit" value="マップ">
            </form>
            <form action="../manager/News.action" method="post">
                <input type="submit" value="お知らせ">
            </form>
            <form action="../manager/Setting_C.action" method="post">
                <input type="submit" value="設定">
            </form>
        </div>
    </footer>
</body>
</html>
