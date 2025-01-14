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

        /* 削除と編集ボタンを左に寄せる */
        .button-container {
            display: flex; /* フレックスボックスを使って横並び */
            justify-content: flex-start; /* ボタンを左端に寄せる */
            gap: 10px; /* ボタン間の隙間 */
        }

        /* 投稿、編集、削除ボタンを小さくするためのスタイル */
        .button-container form input[type="submit"] {
            width: 120px; /* ボタンの横幅を小さく設定 */
            padding: 8px 20px; /* ボタンのパディング */
            font-size: 0.9em; /* フォントサイズを小さく */
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

        /* f2のテキストエリアの横幅を大きくする */
        textarea[name="f4"] {
            width: 60%; /* 横幅を80%に変更 */
            height: 500px;
        }

        /* 戻るボタンと編集ボタンのスタイルを小さく設定 */
        .back-button, .edit-button {
            width: 120px; /* ボタンの横幅を小さく設定 */
            padding: 8px 20px; /* ボタンのパディング */
            font-size: 0.9em; /* フォントサイズを小さく */
        }
    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <div>
            <form action ="../manager/FishCardView.action" method="post">
                <input class="back-button" type="submit" value="戻る">
            </form>
        </div>

            <form action="../manager/FishCardEditDone.action" method="post" enctype="multipart/form-data">
        <div>
            <textarea id="content" name="title" placeholder="ここにカード名を入力してください" >${FishCard.cardTitle}</textarea>
        </div>

        <!-- PDFファイルをアップロードするフィールド -->
        <div>
            <label for="imageUpload">画像をアップロードして下さい：</label>
            <input type="file" id="imageUpload" name="imageUpload" accept="application/jpg">
            <img src="viewImage?imagePath=${FishCard.cardImage}" width="250" height="200">
            <input type="hidden" name="cardImage" value="${FishCard.cardImage}">
        </div>

        <div>
            <h2>説明文を入力</h2>
            <textarea id="content" name="text" placeholder="ここに文章を入力してください">${FishCard.cardText}</textarea>
        </div>

        <!-- 編集ボタン -->
        <div>
            <input type="hidden" name="cardId" value="${FishCard.cardId }">
                <input class="edit-button" type="submit" value="編集">
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
