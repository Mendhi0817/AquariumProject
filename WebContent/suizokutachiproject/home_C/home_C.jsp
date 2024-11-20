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

        /* ログアウトボタンをパスワード変更ボタンと同じデザインに変更 */
        .logout-button-container {
            display: flex;
            justify-content: center; /* 中央揃え */
            gap: 20px; /* ボタン間の隙間 */
            margin-top: 20px; /* 上部に余白 */
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
            width: 250px; /* 横幅を統一 */
        }

        .logout-button-container form input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        /* 魚カードのスタイル */
        .fish-card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
            margin: 20px;
        }

        .fish-card {
            width: 250px;
            height: 350px;
            border: 1px solid #ccc;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            text-align: center;
            padding: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .fish-card img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .fish-card h3 {
            font-size: 1.2em;
            margin-top: 15px;
            color: #333;
        }

        .fish-card p {
            font-size: 0.9em;
            color: #666;
            margin-top: 10px;
        }

        .fish-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }

        /* QRコード読み取りボタンのスタイル */
        .qr-code-button {
            width: 300px; /* ボタンの横幅を大きく設定 */
            padding: 20px 80px; /* ボタンのパディング */
            font-size: 1.5em; /* フォントサイズを大きく */
            background-color: #ff6347; /* ボタンの背景色（緑） */
            border-radius: 10px; /* 角を丸く */
            color: white; /* 文字色 */
            border: none; /* 枠線なし */
            cursor: pointer; /* カーソルをポインターに */
            text-align: center; /* テキストを中央に */
            display: block; /* ブロック要素にして、中央に配置 */
            margin: 20px auto; /* 上下に余白を追加 */
        }

        /* ホバー時のQRコードボタンの色変更 */
        .qr-code-button:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <!-- 魚カードのセクション -->
        <section class="fish-card-container">
            <div class="fish-card">
                <img src="../../picture/fish1.jpg" alt="魚1">
                <h3>魚の名前1</h3>
                <p>この魚は美しい色彩を持ち、主に暖かい海域に生息しています。</p>
            </div>

            <div class="fish-card">
                <img src="../../picture/fish2.jpg" alt="魚2">
                <h3>魚の名前2</h3>
                <p>この魚は夜行性で、サンゴ礁の周りでよく見かけます。</p>
            </div>

            <div class="fish-card">
                <img src="../../picture/fish3.jpg" alt="魚3">
                <h3>魚の名前3</h3>
                <p>深海に生息するこの魚は、独特の光を発することが知られています。</p>
            </div>

            <!-- QRコード読み取りボタン -->
            <form action="../manager/Home_staff.action" method="post">
                <input type="submit" value="QRコード" class="qr-code-button">
            </form>
        </section>

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


