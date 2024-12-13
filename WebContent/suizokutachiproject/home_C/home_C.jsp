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
            min-height: 100vh;
            margin: 0;
        }

        header {
            /* ヘッダーのスタイルを追加する場合はここに */
        }

        footer {
            margin-top: auto;
            background-color: #78e3fb;
            text-align: center;
            padding: 10px;
        }

        .sidebar {
            text-align: center;
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
            height: 300px;
        }

        .button-container, .button-group {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .button-container button, .button-group input[type="submit"] {
            padding: 10px 40px;
            font-size: 1.2em;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
            width: 250px;
        }

        .button-container button:hover, .button-group input[type="submit"]:hover {
            background-color: #ff4500;
        }

        footer form {
            display: inline-block;
            margin: 0 10px;
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

        /* BGMの文字を大きくして中央に配置 */
        .bgm-text {
            font-size: 3em;
            font-weight: bold;
            text-align: center;
            margin-top: 30px;
            color: black;
        }

        .logout-button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .logout-button-container form input[type="submit"] {
            padding: 10px 40px;
            font-size: 1.2em;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
            width: 250px;
        }

        .logout-button-container form input[type="submit"]:hover {
            background-color: #ff4500;
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
            width: 300px;
            padding: 20px 80px;
            font-size: 1.5em;
            background-color: #ff6347;
            border-radius: 10px;
            color: white;
            border: none;
            cursor: pointer;
            text-align: center;
            display: block;
            margin: 20px auto;
        }

        .qr-code-button:hover {
            background-color: #ff4500;
        }

        /* フッターのボタン配置調整 */
        footer .footer-buttons {
            display: flex;
            flex-direction: column;
            gap: 20px; /* ボタン間の垂直スペースを設定 */
        }

        footer .footer-buttons .row {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
        }

        /* 新しく追加した中央寄せのスタイル */
        .footer-buttons .row-center {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
            width: 100%;
        }
    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <!-- 魚カードのセクション -->
        <section class="fish-card-container">
            <div class="fish-card">
                <img src="" alt="魚1">
                <h3>魚の名前1</h3>
                <p>この魚は美しい色彩を持ち、主に暖かい海域に生息しています。</p>
            </div>

            <div class="fish-card">
                <img src="" alt="魚2">
                <h3>魚の名前2</h3>
                <p>この魚は夜行性で、サンゴ礁の周りでよく見かけます。</p>
            </div>

            <div class="fish-card">
                <img src="" alt="魚3">
                <h3>魚の名前3</h3>
                <p>深海に生息するこの魚は、独特の光を発することが知られています。</p>
            </div>
        </section>

        <!-- QRコード読み取りボタン -->
        <form action="../manager/Camera.action" method="post">
            <input type="submit" value="QRコード" class="qr-code-button">
        </form>
    </div>

    <footer>
        <div class="footer-buttons">
            <!-- ホーム、マップボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/Home_customer.action" method="post">
                    <input type="submit" value="ホーム">
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

