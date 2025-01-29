<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
    <link rel="stylesheet" href="../News/news.css">
    <title>水族舘プロジェクト</title>
    <style>
        /* 文字サイズを変更する */
        h1 {
            font-size: 50px; /* 見出しの文字サイズ */
        }

        input[type="submit"] {
            font-size: 25px; /* ボタンの文字サイズ */
            padding: 30px 80px; /* ボタンの大きさ */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーをなくす */
            border-radius: 5px; /* ボタンの角を丸くする */
            cursor: pointer; /* ポインターが表示されるようにする */
            transition: background-color 0.3s ease; /* ホバー時の色変更をスムーズにする */
        }

        input[type="submit"]:hover {
            background-color:#ff4500; /* ホバー時の背景色 */
        }

        body {
            font-size: 18px; /* ページ全体の文字サイズ */
        }
    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <form action="../common/password_reset.jsp" method="post">
            <h1>パスワードの変更が完了しました!</h1>
        </form>

        <form action="../common/login.jsp" method="post">
            <input type="submit" value="ホーム">
        </form>
    </div>
</body>
</html>

