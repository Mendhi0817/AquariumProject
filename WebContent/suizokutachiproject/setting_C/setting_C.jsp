
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

        .content input, .content textarea {
            width: 50%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .content textarea {
            height: 300px; /* テキストエリアの高さ */
        }

        /* ボタンを中央に寄せ、共通のスタイルを設定 */
        .button-container, .button-group {
            display: flex;
            justify-content: center; /* ボタンを中央揃え */
            gap: 20px; /* ボタン間の隙間を設定 */
            margin-top: 20px; /* 上部に余白 */
        }

        .button-container button, .button-group input[type="submit"] {
            padding: 10px 40px; /* ボタンのパディング */
            font-size: 1.2em; /* ボタンの文字サイズ */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px; /* 横幅を統一（例として250pxを設定） */
        }

        .button-container button:hover, .button-group input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

        footer input[type="submit"] {
            padding: 10px 60px; /* ボタンのパディング */
            font-size: 1.2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 250px; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
        }

        footer input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        /* BGMの文字を大きくして中央に配置 */
        .bgm-text {
            font-size: 3em; /* フォントサイズを大きく */
            font-weight: bold; /* 太字 */
            text-align: center; /* 中央揃え */
            margin-top: 30px; /* 上部に余白 */
            color: black; /* 文字色を黒に変更 */
        }

    </style>
</head>

<body>
   <div class="container">
        <aside class="sidebar"><img src="../../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <!-- BGMの文字を中央揃えで大きく表示 -->
        <div class="bgm-text">
            BGM
        </div>

        <div class="button-container">
            <button name="ON">ON</button>
            <button name="OFF">OFF</button>
        </div>

        <div class="button-group">
            <!-- ユーザー情報変更ボタン -->
            <form action ="../manager/Change_User_Data.action" method="post">
                <input type="submit" value="ユーザー情報変更">
            </form>

<<<<<<< HEAD
            <form action ="../manager/password_reset.action" method="post">
                <input type="submit" value="パスワード変更">
            </form>

        </div>

        <!-- ログアウトボタンを中央揃えで配置 -->
        <div class="logout-button-container">
            <form action="../manager/Coupon_C.action" method="post">
                <input type="submit" value="クーポン">
            </form>

            <form action="../manager/Logout.action" method="post">
=======
            <!-- ログアウトボタン（位置変更） -->
            <form action="../manager/logout.action" method="post">
>>>>>>> branch 'master' of https://github.com/Mendhi0817/AquariumProject.git
                <input type="submit" value="ログアウト">
            </form>

        </div>
    </div>

    <footer>
        <div class="footer-buttons">
            <form action="../../manager/Home_customer.action" method="post">
                <input type="submit" value="ホーム">
            </form>
            <form action="../manager/Map.action" method="post">
                <input type="submit" value="マップ">
            </form>
            <form action="../manager/News.action" method="post">
                <input type="submit" value="お知らせ">
            </form>
            <form action="../manager/Setting.action" method="post">
                <input type="submit" value="設定">
            </form>
        </div>
    </footer>
</body>
</html>
