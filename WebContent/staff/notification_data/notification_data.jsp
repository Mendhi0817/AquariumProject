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
            padding: 10px 60px;
            font-size: 1.2em;
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

    </style>
    <script>
        // ページが読み込まれたときに実行される
        window.onload = function() {
            // 今日の日付を取得して、"YYYY-MM-DD"形式に整形
            var today = new Date();
            var year = today.getFullYear();
            var month = today.getMonth() + 1; // 月は0から始まるので、1を足す
            var day = today.getDate();

            if (month < 10) month = '0' + month; // 1桁の月を0埋め
            if (day < 10) day = '0' + day; // 1桁の日を0埋め

            var todayString = year + '-' + month + '-' + day;

            // 日付入力欄のmin属性に今日の日付を設定
            document.getElementById('date').setAttribute('min', todayString);
        };
    </script>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <div class="button-container">
            <form action="../manager/Notification_data_delete.action" method="post">
                <input type="submit" value="削除">
            </form>
            <form action="../manager/Notification_data_edit.action" method="post">
                <input type="submit" value="編集">
            </form>
        </div>

        <form action="../manager/NotificationDataCreateExecute.action" method="post">
            <div class="content">
                <h2>タイトルを入力</h2>
                <input type="text" id="title" name="f1" placeholder="タイトルを入力してください">

                <h2>文章を入力</h2>
                <textarea id="content" name="f2" placeholder="ここに文章を入力してください"></textarea>

                <h2>日付を入力</h2>
                <input type="date" id="date" name="f3">
            </div>
            <div>
                <input type="submit" value="投稿">
            </div>
        </form>
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
