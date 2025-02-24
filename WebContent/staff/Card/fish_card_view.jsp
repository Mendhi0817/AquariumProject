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

        .content input, .content textarea, .content input[type="date"] {
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

        /* 削除と編集ボタンを横並びにする */
        .button-container {
            display: flex; /* フレックスボックスを使って横並び */
            justify-content: flex-start; /* ボタンを左端に寄せる */
            gap: 10px; /* ボタン間の隙間 */
        }

        /* 投稿、編集、削除ボタンを小さくするためのスタイル */
        .button-container form input[type="submit"] {
            width: 10px; /* ボタンの横幅を小さく設定 */
            padding: 40px 150px; /* ボタンのパディング */
            font-size: 2em;
        }

        /* すべてのsubmitボタンに対して共通のスタイルを適用 */
        input[type="submit"] {
            padding: 10px 60px; /* ボタンのパディング */
            font-size: 1.2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 250px; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
            margin: 5px 0; /* ボタン間に適切な余白を追加 */
        }

        /* ホバー時の色変更 */
        input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

        /* ホームと設定ボタンを大きくするためのスタイル */
        footer form input[type="submit"] {
            width: 300px; /* ボタンの横幅を大きく設定 */
            padding: 60px 60px; /* ボタンのパディングを大きく設定 */
            font-size: 1.5em; /* フォントサイズを大きく設定 */
        }

        /* すべてのsubmitボタンに対して共通のスタイルを適用 */
        input[type="submit"] {
            padding: 40px 100px; /* ボタンのパディング */
            font-size: 2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 250px; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
            margin: 5px 0; /* ボタン間に適切な余白を追加 */
        }

        /* ホバー時の色変更 */
        input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        /* ホームと設定ボタンを大きくするためのスタイル */
        footer form input[type="submit"] {
            width: 300px; /* ボタンの横幅を大きく設定 */
            padding: 60px 60px; /* ボタンのパディングを大きく設定 */
            font-size: 2em; /* フォントサイズを大きく設定（文字も大きく） */
        }

        /* すべてのsubmitボタンに対して共通のスタイルを適用 */
        input[type="submit"] {
            padding: 40px 100px; /* ボタンのパディング */
            font-size: 2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 250px; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
            margin: 5px 0; /* ボタン間に適切な余白を追加 */
        }

        /* ホバー時の色変更 */
        input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        h2{
        	font-size: 3em;
        }
        span{
        	font-size: 3em;
        }
		h3{
        	font-size: 5em;
        }
        footer {
    margin-top: auto;
    background-color: #78e3fb;
    text-align: center;
    padding: 10px;
    width: 100%; /* 横幅を100%に設定 */
}




    </style>

</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
        <div class="button-group">
            <form action="../manager/FishCard.action" method="post">
                <input type="submit" value="戻る">
            </form>

            <h2>編集、削除したいカードを選んでください</h2>

            <div class="fishcard-list">
                <!-- listTitle からお知らせタイトルをループで表示 -->
                <c:forEach var="listTitle1" items="${FishCardList}">
                    <div class="fishcard-item">
                        <!-- お知らせタイトルを表示 -->
                        <span>【${listTitle1.cardTitle}】</span><br>
                        <img src="viewImage?imagePath=${listTitle1.cardImage}" width="1000" height="600">
                        <div class="button-container"> <!-- ボタンを横並びにするコンテナ -->
                            <form action="../manager/FishCardEdit.action" method="post">
                                <input type="hidden" name="cardId" value="${listTitle1.cardId}">
                                <input type="submit" value="編集">
                            </form>
                            <form action="../manager/FishCardDeleteDone.action" method="post">
                                <input type="hidden" name="cardId" value="${listTitle1.cardId}">
                                <input type="submit" value="削除">
                            </form>
                            <h3>
                            　
                            </h3>
                        </div>
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
