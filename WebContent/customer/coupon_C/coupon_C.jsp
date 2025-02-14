<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ja">
<head>
    <link rel="stylesheet" href="../News/news.css">
    <title>水族舘プロジェクト</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* ビューポートの高さを最小限に設定 */
            margin: 0; /* デフォルトのマージンをリセット */
            background-image: url('../picture/sea.png'); /* 背景画像を設定 */
            background-size: cover; /* 背景画像をビューポート全体にフィット */
            background-position: center; /* 背景画像を中央に配置 */
            background-attachment: fixed; /* スクロールしても背景が動かないように設定 */
        }

        header {
            background-color: white; /* ヘッダーの背景色を白に設定 */
        }

        footer {
            margin-top: auto; /* フッターを画面の下に固定 */
            background-color: #78e3fb; /* 背景色を設定（任意） */
            text-align: center; /* 中央揃え（任意） */
            padding: 10px; /* 内側の余白（任意） */
        }

        .footer-buttons {
            display: flex;
            flex-direction: column;
            gap: 20px; /* ボタン間の垂直スペースを設定 */
        }

        .footer-buttons .row-center {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
            width: 100%;
        }

        .footer-buttons .row {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
        }

        .coupon-list {
            display: flex;
            flex-direction: row; /* 横並びにする */
            justify-content: space-between; /* タイトルとボタンを左右に配置 */
            align-items: center; /* 垂直方向に中央揃え */
            margin-top: 20px;
            flex-wrap: wrap; /* 横並びがはみ出さないようにラップ */
        }


        .coupon-item {
            display: flex;
            justify-content: space-between; /* タイトルとボタンを横並びにする */
            align-items: center;
            margin: 15px 0; /* マージンを大きくしてアイテムの間隔を広げる */
            border: 1px solid #ccc; /* 枠線を追加 */
            border-radius: 8px; /* 角を丸く */
            font-size: 2em; /* フォントサイズを大きく */
            background-color: #f9f9f9; /* 背景色を淡い色に変更 */
            width: 500%; /* アイテムの幅を100%にしてラップさせる */
        }

        .button-list form input[type="submit"] {
            padding: 10px 40px; /* ボタンのパディング */
            font-size: 2em; /* ボタンの文字サイズ */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* ホームボタンと同じ背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px; /* 横幅を統一 */
        }

        .button-list form input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

        footer input[type="submit"] {
            padding: 20px 80px; /* ボタンの縦横の余白を増加 */
            font-size: 1.5em; /* フォントサイズを大きく */
            width: 300px; /* 横幅も少し広げる */
        }

        footer input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        footer {
        margin-top: auto;
        background-color: #78e3fb;
        text-align: center;
        padding: 20px; /* 内側の余白を増やす */
    }

    .footer-buttons {
        display: flex;
        flex-direction: column;
        gap: 25px;
        justify-content: center;
        align-items: center; /* ボタンを中央揃えに */
    }

    .footer-buttons .row-center {
        display: flex;
        justify-content: center;
        gap: 25px; /* ボタン間の間隔 */
    }

    .footer-buttons form input[type="submit"] {
        padding: 15px 60px;
        font-size: 1.5em;
        border-radius: 12px; /* 角を丸く */
        background-color: #ff6347; /* 鮮やかなオレンジ色 */
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease; /* ホバー時のアニメーション */
        width: 250px; /* ボタンの幅を一定に */
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* ボタンに影を付ける */
    }

    .footer-buttons form input[type="submit"]:hover {
        background-color: #ff4500; /* ホバー時の背景色 */
        transform: scale(1.05); /* 少し拡大 */
    }

    footer input[type="submit"]:active {
        background-color: #ff3300; /* クリック時の背景色 */
        transform: scale(1); /* 拡大をリセット */
    }

    footer input[type="submit"], footer .footer-buttons input[type="submit"] {
        padding: 40px 80px; /* ボタンの縦横の余白を増加 */
        font-size: 2em; /* フォントサイズを大きく */
        width: 300px; /* 横幅も少し広げる */
    }

    footer .footer-buttons .row-center {
        display: flex;
        justify-content: center;
        gap: 20px; /* ボタン間の水平スペースを設定 */
        width: 100%;
    }

    footer .footer-buttons .row {
        display: flex;
        justify-content: center;
        gap: 20px; /* ボタン間の水平スペースを設定 */
    }

    header {
		    background-color: white; /* 背景色を黒に設定 */
		}

    </style>
</head>

<body>
    <div class="container">

    <header>
        <a href="../manager/FishCardList.action" class="title-logo-link">
            <img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150">
        </a>
        </header>

        <h1>クーポン一覧</h1>

        <div class="coupon-list">
            <div class="title-list">
                <c:forEach var="coupon" items="${listTitle}">
                    <div class="coupon-item">
                        <span>${coupon.COUPON_TITLE}</span>
                    </div>
                </c:forEach>
            </div>

            <div class="button-list">
                <c:forEach var="coupon" items="${listId}">
                    <form class="delete-btn-1" action="../manager/CouponCustomerDetail.action" method="post">
                        <input type="hidden" name="COUPON_ID" value="${coupon.COUPON_ID}">
                        <input type="submit" value="詳細">
                    </form>
                </c:forEach>
            </div>
        </div>
    </div>

    <footer>
        <div class="footer-buttons">
            <!-- ホーム、マップボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/CouponCustomer.action" method="post">
                    <input type="submit" value="クーポン">
                </form>
                <form action="../manager/MapView.action" method="post">
                    <input type="submit" value="マップ">
                </form>
            </div>

            <!-- お知らせ、設定ボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/Notification_data_customer.action" method="post">
                    <input type="submit" value="お知らせ">
                </form>
                <form action="../manager/Setting_C.action" method="post">
                    <input type="submit" value="設定">
                </form>
            </div>
        </div>
    </footer>
</body>
</html>

