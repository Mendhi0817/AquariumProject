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
            width: 150px; /* ボタンの横幅を小さく設定 */
            padding: 8px 30px; /* ボタンのパディングを小さく設定 */
            font-size: 0.9em; /* フォントサイズを小さく設定 */
        }

        /* すべてのsubmitボタンに対して共通のスタイルを適用 */
        input[type="submit"] {
            padding: 8px 30px; /* ボタンのパディング */
            font-size: 0.9em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 150px; /* 横幅を小さく設定 */
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

        <form action="UploadCouponServlet" method="post" enctype="multipart/form-data"> <!-- enctypeを追加 -->
            <label for="textInput">クーポン内容:</label>
            <div>
                <input type="text" id="textInput" name="textInput" required>
            </div>

            <label for="pdfUpload">クーポンの写真をアップロードして下さい：</label>
            <div>
                <input type="file" id="pdfUpload" name="pdfUpload" accept="image/*" required> <!-- PDFから画像に変更可能 -->
            </div>

            <div class="button-container">
                <!-- 投稿ボタンも戻るボタンと同じデザインに統一 -->
                <button type="submit">投稿</button>
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
