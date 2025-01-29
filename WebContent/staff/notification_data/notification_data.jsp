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

        /* ボタンを横並びにするためのスタイル */
        .button-group {
            display: flex; /* フレックスボックスを使って横並びにする */
            justify-content: center; /* ボタンを中央揃え */
            gap: 20px; /* ボタン間の隙間を設定 */
            margin-top: 20px; /* 上部に余白 */
        }

        .button-group input[type="submit"] {
            padding: 10px 40px; /* ボタンのパディング */
            font-size: 1.2em; /* ボタンの文字サイズ */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px; /* 横幅を統一（例として250pxを設定） */
        }

        .button-group input[type="submit"]:hover {
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

        .button-group input[type="submit"] {
    padding: 20px 60px; /* ボタンのパディングを大きく */
    font-size: 1.5em; /* ボタンの文字サイズを大きく */
    border-radius: 10px; /* 角を少し大きく丸く */
    background-color: #ff6347; /* ボタンの背景色 */
    color: white; /* 文字色 */
    border: none; /* ボーダーを消す */
    cursor: pointer; /* マウスオーバー時にポインターを表示 */
    width: 300px; /* 横幅を大きく統一 */
}

.button-group input[type="submit"]:hover {
    background-color: #ff4500; /* ホバー時の背景色 */
}

.submit-button {
        padding: 20px 60px; /* ボタンのパディングを大きく */
        font-size: 1.5em; /* ボタンの文字サイズを大きく */
        border-radius: 10px; /* 角を少し大きく丸く */
        background-color: #ff6347; /* ボタンの背景色 */
        color: white; /* 文字色 */
        border: none; /* ボーダーを消す */
        cursor: pointer; /* マウスオーバー時にポインターを表示 */
        width: 300px; /* 横幅を大きく統一 */
    }

    .submit-button:hover {
        background-color: #ff4500; /* ホバー時の背景色 */
    }

    /* 削除ボタン */
    .delete-button {
        padding: 20px 63px; /* ボタンのパディングを大きく */
        font-size: 2.0em; /* ボタンの文字サイズを大きく */
        border-radius: 10px; /* 角を少し大きく丸く */
        background-color: #ff6347; /* ボタンの背景色 */
        color: white; /* 文字色 */
        border: none; /* ボーダーを消す */
        cursor: pointer; /* マウスオーバー時にポインターを表示 */
    }

    .delete-button:hover {
        background-color: #ff4500; /* ホバー時の背景色 */
    }

    /* 編集ボタン */
    .edit-button {
        padding: 20px 63px; /* ボタンのパディングを大きく */
        font-size: 2.0em; /* ボタンの文字サイズを大きく */
        border-radius: 10px; /* 角を少し大きく丸く */
        background-color: #ff6347; /* ボタンの背景色 */
        color: white; /* 文字色 */
        border: none; /* ボーダーを消す */
        cursor: pointer; /* マウスオーバー時にポインターを表示 */
    }

    .edit-button:hover {
        background-color: #ff4500; /* ホバー時の背景色 */
    }
.button-container {
    display: flex;
    justify-content: flex-start; /* 左寄せ */
    gap: 20px; /* ボタン間の隙間 */
}

footer form input[type="submit"] {
        width: 300px; /* ボタンの横幅を大きく設定 */
        padding: 60px 60px; /* ボタンのパディングを大きく設定 */
        font-size: 2em; /* フォントサイズを大きく設定（文字も大きく） */
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
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>




        <form action="../manager/NotificationDataCreateExecute.action" method="post">
    <div class="content">
        <h2 style="font-size: 2em;">タイトルを入力</h2>
        <input type="text" id="title" name="f1" placeholder="タイトルを入力してください" style="width: 100%; padding: 15px; font-size: 1.5em;"required>

        <h2 style="font-size: 2em;">文章を入力</h2>
        <textarea id="content" name="f2" placeholder="ここに文章を入力してください" style="width: 100%; height: 400px; padding: 15px; font-size: 1em;"required></textarea>

        <h2 style="font-size: 2em;">日付を入力</h2>
        <input type="date" id="date" name="f3" style="width: 100%; padding: 15px; font-size: 1.5em;"required>
    </div>
    <div>
        <input type="submit" value="投稿" class="submit-button" style="padding: 20px 80px; font-size: 2em; width: 100%;">
    </div>
</form>

<div>
　

</div>
<div>
　

</div>
<div>
　

</div>

<div class="button-container" style="display: flex; justify-content: flex-start; gap: 20px;">
    <form action="../manager/Notification_data_delete.action" method="post">
        <input type="submit" value="投稿したお知らせの削除" class="delete-button">
    </form>

    <form action="../manager/Notification_data_edit.action" method="post">
        <input type="submit" value="投稿したお知らせの編集" class="edit-button">
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