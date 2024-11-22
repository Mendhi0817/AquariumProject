<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
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
            /* ヘッダーのスタイル */
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
            padding: 15px; /* 入力欄のサイズを大きく */
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1.2em; /* フォントサイズを大きく */
        }

        .content textarea {
            height: 300px;
        }

        /* パスワード入力欄のサイズを大きく */
        input[type="text"], input[type="password"] {
            width: 60%;  /* 入力欄を広くする */
            padding: 15px; /* パディングを増やす */
            margin: 15px 0; /* 上下の余白 */
            font-size: 1.2em; /* フォントサイズを大きく */
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* 確認ボタンのデザインを変更 */
        input[type="submit"] {
            padding: 12px 50px; /* ボタンのパディングを調整 */
            font-size: 1.5em; /* フォントサイズを大きく */
            border-radius: 8px;
            background-color: #ff6347; /* 緑色の背景 */
            color: white;
            border: none;
            cursor: pointer;
            width: 250px;
            margin-top: 20px;
            transition: background-color 0.3s ease; /* ホバー時の色変化 */
        }

        /* ボタンにホバー時のスタイル */
        input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の色 */
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

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

            <form action="../common/password_reset.jsp" method="post">
				<h1>メールアドレスが格納されたことが確認されました!</h1>
			</form>
    </div>
</body>
</html>