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



        /* 戻るボタンと投稿ボタンの共通スタイル */
        .button-container button, input[type="submit"] {
            padding: 8px 30px; /* ボタンのパディング */
            font-size: 0.9em; /* フォントサイズを小さく設定 */
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 150px; /* 横幅を小さく設定 */
            margin: 5px 0; /* ボタン間に適切な余白を追加 */
        }

        /* ホバー時の色変更 */
        .button-container button:hover, input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
        <form action="../manager/Home_staff.action" method="post">
            <input type="submit" value="戻る">
        </form>

        <form action="CouponMakeExecuteAction" method="post" enctype="multipart/form-data"> <!-- enctypeを追加 -->

            <label for="textInput">クーポン内容:</label>
            <div>
                <input type="text" id="textInput" name="textInput" required>
            </div>


            <h2>タイトルを入力</h2>
                <input type="text" id="title" name="f1" placeholder="タイトルを入力してください">

             <h2>文章を入力</h2>
             <textarea id="content" name="f2" placeholder="ここに文章を入力してください"></textarea>


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
