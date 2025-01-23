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

        .content input, .content textarea, .content input[type="date"] {
            width: 80%; /* 入力フィールドの幅を大きく設定 */
            padding: 15px; /* 内側の余白を大きく */
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1.2em; /* フォントサイズを少し大きく */
        }

        .content textarea {
            height: 300px;
        }

        .button-container {
            display: flex;
            justify-content: flex-start;
            gap: 10px;
        }

        .button-container form input[type="submit"] {
            width: 150px;
            padding: 15px 40px;
            font-size: 1em;
        }

        input[type="submit"] {
            padding: 30px 60px;
            font-size: 2em;
            border: none;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            cursor: pointer;
            width: 250px;
            margin: 5px 0;
        }

        input[type="submit"]:hover {
            background-color: #ff4500;
        }

        footer form {
            display: inline-block;
            margin: 0 10px;
        }

        footer form input[type="submit"] {
            width: 300px;
            padding: 60px 60px;
            font-size: 2em;
        }

        input[type="submit"] {
            padding: 30px 60px;
            font-size: 2em;
            border: none;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            cursor: pointer;
            width: 250px;
            margin: 5px 0;
        }

        input[type="submit"]:hover {
            background-color: #ff4500;
        }

        .content .label {
            font-size: 2em;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .large-input {
            width: 80%; /* 入力フィールドの幅を広く */
            padding: 20px; /* 内側に余白を追加 */
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 1.5em;
        }

        .content textarea {
            width: 80%;
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 1.5em;
        }
    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
        <div>
            <form action="../manager/Setting.action" method="post">
                <input type="submit" value="戻る" class="back-button">
            </form>
        </div>

        <form action="../manager/Change_complete.action" method="post">
            <!-- 名前の変更 -->
            <div class="content">
                <div class="label">名前の変更</div>
                <div class="input-field">
                    <input type="text" name="name" placeholder="新しい名前を入力" class="large-input">
                </div>
            </div>

            <!-- メールアドレスの変更 -->
            <div class="content">
                <div class="label">メールアドレスの変更</div>
                <div class="input-field">
                    <input type="text" name="email" placeholder="新しいメールアドレスを入力" class="large-input">
                </div>
            </div>

            <div class="content">
                <input type="submit" value="変更" class="back-button">
            </form>
        </div>
    </div>

    <footer>
        <form action="../manager/Home_staff.action" method="post">
            <input type="submit" value="ホーム">
        </form>
        <form action="../manager/Setting.action" method="post">
            <input type="submit" value="設定">
        </form>
    </footer>
</body>
</html>
