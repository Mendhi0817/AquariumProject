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
		input[type="text"], input[type="password"] {
    width: 95%;  /* 入力欄の幅を80%に変更 */
    padding: 20px; /* パディングを大きくする */
    margin: 15px 0; /* 上下の余白 */
    font-size: 2em; /* フォントサイズを大きくする */
    border: 1px solid #ccc;
    border-radius: 5px;
}
input[type="submit"] {
    padding: 20px 80px; /* ボタンのパディングを増やす */
    font-size: 2em; /* フォントサイズを大きく */
    border-radius: 10px;
    background-color: #ff6347;
    color: white;
    border: none;
    cursor: pointer;
    width: 300px; /* ボタンの幅を広くする */
    margin-top: 30px;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #ff4500;
}
p{
 font-size: 2em; /* フォントサイズを大きく */
}

    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <form action="../manager/PasswordReset.action" method="post">
            <p>登録しているメールアドレスと新しく変えたいパスワードを入力して下さい。</p>
            <p><input type="email" name="email" placeholder="メールアドレス"></p>
            <p><input type="password" name="password" placeholder="新しいパスワード"></p>
            <p><input type="submit" value="確認"></p>

        </form>

                    <form action="login.jsp" method="post">
            <p><input type="submit" value="ホーム"></p>
        </form>
    </div>
</body>
</html>


