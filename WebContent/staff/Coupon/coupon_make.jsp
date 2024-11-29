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

        /* ボタンの共通スタイル */
        .common-button {
            padding: 10px 60px; /* ボタンのパディング */
            font-size: 1.2em; /* ボタンの文字サイズ */
            border: none; /* ボーダーを消す */
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
        }

        .common-button:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        .button-group {
            display: flex; /* フレックスボックスを使って横並びにする */
            justify-content: center; /* ボタンを中央揃え */
            gap: 20px; /* ボタン間の隙間を設定 */
            margin-top: 20px; /* 上部に余白 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
        <form action="../manager/Home_staff.action" method="post">
            <button type="submit" class="common-button">戻る</button>
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
                <button type="submit" class="common-button">投稿</button>
            </div>
        </form>

    </div>

    <footer>
        <form action="../manager/Home_staff.action" method="post">
            <button type="submit" class="common-button">ホーム</button>
        </form>
        <form action="../manager/Setting.action" method="post">
            <button type="submit" class="common-button">設定</button>
        </form>
    </footer>
</body>
</html>

