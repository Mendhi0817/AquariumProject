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

        /* ボタンを横並びにするためのスタイル */
        .button-container {
            display: flex; /* フレックスボックスを使用して横並びに */
            justify-content: flex-start; /* 左寄せ */
            gap: 10px; /* ボタン間に隙間 */
        }

        /* 編集と削除ボタンを小さくする */
        .button-container form input[type="submit"] {
            width: 120px; /* 横幅を小さく設定 */
            padding: 10px 20px; /* パディングを調整 */
            font-size: 1em;
            border-radius: 5px;
            background-color: #ff6347;
            color: white;
            cursor: pointer;
            border: none;
        }

        /* 編集と削除ボタンのホバー時の色変更 */
        .button-container form input[type="submit"]:hover {
            background-color: #ff4500;
        }

        /* すべてのsubmitボタンに共通のスタイルを適用 */
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

        /* ホバー時の色変更 */
        input[type="submit"]:hover {
            background-color: #ff4500;
        }

        footer form {
            display: inline-block;
            margin: 0 10px;
        }

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

<div class="button-group">
            <form action ="../manager/FishCard.action" method="post">
                <input type="submit" value="戻る">
            </form>

            <h2>編集、削除したいカードを選んでください</h2>

            <div class="fishcard-list">
                <!-- listTitle からお知らせタイトルをループで表示 -->
                <c:forEach var="listTitle1" items="${FishCardList}">
                    <div class="fishcard-item">
                        <!-- お知らせタイトルを表示 -->

                        <span>${listTitle1.cardTitle}</span><br>
                        <img src="viewImage?imagePath=${listTitle1.cardImage}" width="250" height="200">
            <form action="../manager/FishCardEdit.action" method="post">
            <input type="hidden" name="cardId" value="${listTitle1.cardId }">
                <input type="submit" value="編集">
            </form>
            <form action="../manager/FishCardDeleteDone.action" method="post">
            <input type="hidden" name="cardId" value="${listTitle1.cardId }">
                <input type="submit" value="削除">
            </form>
                    </div>
                </c:forEach>
        <c:forEach var="cardId1" items="${cardId}">
        <!-- ボタンを横並びにするためのコンテナ -->
        <div class="button-container">
        <form action ="../manager/FishCard.action" method="post">
                <input type="submit" value="戻る">
            </form>
        </div>
        </c:forEach>
		</div>
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
