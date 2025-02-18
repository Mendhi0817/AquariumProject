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
            -webkit-appearance: none;
        }

        header {
            /* ヘッダーのスタイルを追加する場合はここに */-webkit-appearance: none;
        }

        footer {
            margin-top: auto; /* フッターを画面の下に固定 */
            background-color: #78e3fb; /* 背景色を設定（任意） */
            text-align: center; /* 中央揃え（任意） */
            padding: 10px; /* 内側の余白（任意） */
            -webkit-appearance: none;
        }

        .sidebar {
            text-align: center;
            -webkit-appearance: none;  /* サイドバー内のコンテンツを中央揃え */
        }

        .content input, .content textarea {
            width: 50%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            -webkit-appearance: none;
        }

        .content textarea {
            height: 300px;
            -webkit-appearance: none;  /* テキストエリアの高さ */
        }

        /* ボタンを中央に寄せ、共通のスタイルを設定 */
        .button-container, .button-group {
            display: flex;
            justify-content: center; /* ボタンを中央揃え */
            gap: 20px; /* ボタン間の隙間を設定 */
            margin-top: 20px;
            -webkit-appearance: none;  /* 上部に余白 */
        }

        .button-container button, .button-group input[type="submit"] {
            padding: 10px 40px; /* ボタンのパディング */
            font-size: 1.2em; /* ボタンの文字サイズ */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px;
            -webkit-appearance: none;  /* 横幅を統一（例として250pxを設定） */
        }

        .button-container button:hover, .button-group input[type="submit"]:hover {
            background-color: #ff4500;
            -webkit-appearance: none;  /* ホバー時の背景色 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px;
            -webkit-appearance: none;  /* フォーム間の余白 */
        }

        footer input[type="submit"] {
            padding: 10px 60px; /* ボタンのパディング */
            font-size: 1.2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 250px;
            -webkit-appearance: none; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
        }

        footer input[type="submit"]:hover {
            background-color: #ff4500;
            -webkit-appearance: none;  /* ホバー時の背景色 */
        }

        /* BGMの文字を大きくして中央に配置 */
        .bgm-text {
            font-size: 3em; /* フォントサイズを大きく */
            font-weight: bold; /* 太字 */
            text-align: center; /* 中央揃え */
            margin-top: 30px; /* 上部に余白 */
            color: black;
            -webkit-appearance: none;  /* 文字色を黒に変更 */
        }

        /* ログアウトボタンをパスワード変更ボタンと同じデザインに変更 */
        .logout-button-container {
            display: flex;
            justify-content: center; /* 中央揃え */
            gap: 20px; /* ボタン間の隙間 */
            margin-top: 20px;
            -webkit-appearance: none;  /* 上部に余白 */
        }

        /* ログアウトボタンのスタイルをパスワード変更ボタンと同じに */
        .logout-button-container form input[type="submit"] {
            padding: 10px 40px; /* パスワード変更ボタンと同じパディング */
            font-size: 1.2em; /* パスワード変更ボタンと同じ文字サイズ */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* パスワード変更ボタンと同じ背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px;
            -webkit-appearance: none; /* 横幅を統一 */
        }

        .logout-button-container form input[type="submit"]:hover {
            background-color: #ff4500;
            -webkit-appearance: none;  /* ホバー時の背景色 */
        }

        /* フッターのボタン配置調整 */
        footer .footer-buttons {
            display: flex;
            flex-direction: column;
            gap: 20px;
            -webkit-appearance: none;  /* ボタン間の垂直スペースを設定 */
        }

        footer .footer-buttons .row {
            display: flex;
            justify-content: center;
            gap: 20px;
            -webkit-appearance: none;  /* ボタン間の水平スペースを設定 */
        }

        /* 新しく追加した中央寄せのスタイル */
        .footer-buttons .row-center {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
            width: 100%;
            -webkit-appearance: none;
        }

        header {
            background-color: white;
            -webkit-appearance: none;  /* 背景色を黒に設定 */
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* ビューポートの高さを最小限に設定 */
            margin: 0; /* デフォルトのマージンをリセット */
            background-image: url('../picture/sea.png'); /* 背景画像を設定 */
            background-size: cover; /* 背景画像をビューポート全体にフィット */
            background-position: center; /* 背景画像を中央に配置 */
            background-attachment: fixed;
            -webkit-appearance: none; /* スクロールしても背景が動かないように設定 */
        }

        footer input[type="submit"], footer .footer-buttons input[type="submit"] {
            padding: 20px 80px; /* ボタンの縦横の余白を増加 */
            font-size: 1.5em; /* フォントサイズを大きく */
            width: 300px;
            -webkit-appearance: none; /* 横幅も少し広げる */
        }

        footer input[type="submit"], footer .footer-buttons input[type="submit"] {
            padding: 40px 80px; /* ボタンの縦横の余白を増加 */
            font-size: 2em; /* フォントサイズを大きく */
            width: 300px;
            -webkit-appearance: none;  /* 横幅も少し広げる */
        }

        footer .footer-buttons .row-center {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
            width: 100%;
            -webkit-appearance: none;
        }

        footer .footer-buttons .row {
            display: flex;
            justify-content: center;
            gap: 20px;
            -webkit-appearance: none;  /* ボタン間の水平スペースを設定 */
        }

        /* 戻るボタン */
        input[type="submit"] {
            padding: 30px 10px; /* ボタンのパディング */
            font-size: 2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 250px; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
            margin: 5px 0;
            -webkit-appearance: none; /* ボタン間に適切な余白を追加 */
        }

        input[type="submit"]:hover {
            background-color: #ff4500;
            -webkit-appearance: none; /* ホバー時の背景色 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px;
            -webkit-appearance: none;  /* フォーム間の余白 */
        }

        .notification-list {
            display: flex;
            flex-direction: row; /* 横並びにする */
            justify-content: space-between; /* タイトルとボタンを左右に配置 */
            align-items: center; /* 垂直方向に中央揃え */
            margin-top: 20px;
            flex-wrap: wrap;
            -webkit-appearance: none;  /* 横並びがはみ出さないようにラップ */
        }


        .notification-item {
            display: flex;
            justify-content: space-between; /* タイトルとボタンを横並びにする */
            align-items: center;
            margin: 15px ; /* マージンを大きくしてアイテムの間隔を広げる */
            padding: 150px; /* パディングを大きくしてスペースを広げる */
            border: 1px solid #ccc; /* 枠線を追加 */
            border-radius: 8px; /* 角を丸く */
            font-size: 2em; /* フォントサイズを大きく */
            background-color: #f9f9f9; /* 背景色を淡い色に変更 */
            width: 900%; /* アイテムの幅を100%にしてラップさせる */
            max-width: 550px;
            -webkit-appearance: none;  /* 最大幅を900pxに変更 */
        }

        /* '編集'ボタンのスタイル */
        .notification-item button {
            padding: 8px 25px;
            font-size: 1.1em;
            border-radius: 5px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
            -webkit-appearance: none;
        }

        .notification-item button:hover {
            background-color: #ff4500;
            -webkit-appearance: none;
        }

        /* '編集'ボタンをお知らせタイトルの横に配置 */
        .notification-item span {
            flex-grow: 1; /* タイトルがボタンを圧迫しないように横幅を調整 */
            text-align: left; /* タイトルを左寄せ */
            padding-right: 20px;
            -webkit-appearance: none;  /* タイトルとボタンの間にスペースを追加 */
        }

        /* '削除1'ボタンを小さくするスタイル */
        .delete-btn-1 input[type="submit"] {
            padding: 17px 10px; /* ボタンのパディングを小さく */
            font-size: 2em; /* フォントサイズを小さく */
            margin-top: 20px;
            -webkit-appearance: none;  /* ボタンを少し下に移動 */
        }

        .notification-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 40px;
            padding: 20px; /* パディングを増やしてアイテムを大きくする */
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1.8em; /* フォントサイズを少し小さくしてバランスを取る */
            background-color: #f9f9f9;
            width: 300%; /* 横幅を100%にすることで、親要素に合わせて調整 */
            max-width: 800px; /* 最大幅を800pxに調整 */
            height: auto;
            -webkit-appearance: none;  /* 高さを自動で調整（アイテム内容に応じて） */
        }

        h2{
            font-size: 2em;
            -webkit-appearance: none;  /* フォントサイズを小さく */
        }

        /* タイトルロゴをクリック可能にする */
        .title-logo-link {
            display: block;
            -webkit-appearance: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <header>
            <!-- タイトルロゴにリンクを追加 -->
            <a href="../manager/FishCardList.action" class="title-logo-link">
                <img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150">
            </a>
        </header>

        <h2>閲覧したいお知らせを選んで下さい</h2>
        <div class="notification-list">
            <div class="title-list">
                <c:forEach var="listTitle1" items="${listTitle}">
                    <div class="notification-item">
                        <span>${listTitle1.nt}</span>
                    </div>
                </c:forEach>
            </div>

            <div class="button-list">
                <c:forEach var="listId1" items="${listId}">
                    <form class="delete-btn-1" action="../manager/NotificationDataList_C.action" method="post">
                        <input type="hidden" name="ni" value="${listId1.ni}">
                        <input type="submit" value="閲覧">
                    </form>
                </c:forEach>
            </div>
        </div>


    </div>

    <footer>
        <div class="footer-buttons">
            <div class="row-center">
                <form action="../manager/CouponCustomer.action" method="post">
                    <input type="submit" value="クーポン">
                </form>
                <form action="../manager/MapView.action" method="post">
                    <input type="submit" value="マップ">
                </form>
            </div>

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
