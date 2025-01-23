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

            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .content textarea {
            height: 300px; /* テキストエリアの高さ */
        }

        /* 削除と編集ボタンを左に寄せる */
        .button-container {
            display: flex; /* フレックスボックスを使って横並び */
            justify-content: flex-start; /* ボタンを左端に寄せる */
            gap: 10px; /* ボタン間の隙間 */
            margin-bottom: 20px; /* ボタンと下部の余白 */
        }

        /* 投稿、編集、削除ボタンを小さくするためのスタイル */
        .button-container form input[type="submit"] {

            font-size: 1em;
        }

        /* すべてのsubmitボタンに対して共通のスタイルを適用 */
        input[type="submit"] {

            font-size: 1.2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
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

        /* 魚カードの文字を大きくする */
        .fish-card-title {
            font-size: 4em; /* 魚カードの文字を大きく */
            font-weight: bold;
            margin-bottom: 20px; /* 上部に余白 */
        }

        /* 作成ボタンと一覧ボタンを左寄りにするためのスタイル */
        .button-container {
            display: flex;
            gap: 10px;
            justify-content: flex-start; /* ボタンを左寄せ */

        }



		 footer form input[type="submit"] {
        width: 300px; /* ボタンの横幅を大きく設定 */
        padding: 60px 60px; /* ボタンのパディングを大きく設定 */
        font-size: 2em; /* フォントサイズを大きく設定 */
    }

    .button-container {
        display: flex;
        gap: 20px; /* ボタン間の隙間を広げる */
        justify-content: flex-start;
        margin-bottom: 30px; /* ボタン下部の余白を広げる */
    }

    /* ボタンのサイズを大きくする */
    .button-container form input[type="submit"] {
        font-size: 2.5em; /* フォントサイズを大きくする */
        padding: 60px 60px; /* パディングを広げてボタンを大きくする */
    }
    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <div class="fish-card-title">魚カード</div>


        <div class="button-container">
            <form action="../manager/FishCardMake.action" method="post">
                <input type="submit" value="作成">
            </form>
            <form action="../manager/FishCardView.action" method="post">
                <input type="submit" value="一覧">
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


