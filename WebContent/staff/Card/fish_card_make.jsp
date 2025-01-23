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
            width: 60%; /* 入力フィールドの幅を60%に設定 */
            padding: 15px; /* パディングを大きく */
            margin: 15px 0; /* 余白を大きく */
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1.5em; /* フォントサイズを大きく */
        }

        .content textarea {
            height: 400px; /* テキストエリアの高さを400pxに変更 */
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
            padding: 15px 40px; /* ボタンのパディング */
            font-size: 1em;
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
            font-size: 2em; /* フォントサイズを大きく設定 */
        }
        h2{
        	font-size: 2em;
        }
		label{
			font-size: 1.5em;
		}
    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <!-- 戻るボタンを少し縦幅を小さくしたい場合 -->
        <form action="../manager/FishCard.action" method="post">
            <input type="submit" class="large-btn" value="戻る" style="padding: 20px 80px; font-size: 2em;">
        </form>

        <form action="../manager/FishCardMakeDone.action" method="post" enctype="multipart/form-data">
            <!-- 文字を入力するフィールド -->
            <div>
                <h2>カード名を入力</h2>
                <textarea id="f1" name="f1" placeholder="ここにカード名を入力してください" style="width: 100%; height: 80px; font-size: 1.5em; padding: 20px;"></textarea>
            </div>

            <!-- PDFファイルをアップロードするフィールド -->
            <div>
                <label for="imageUpload">画像をアップロードして下さい：</label>
                <input type="file" id="imageUpload" name="imageUpload" accept="application/jpg" style="width: 60%; padding: 20px; font-size: 1.5em;">
            </div>

            <!-- 新しいフォームセクション -->
            <div class="form-container"></div>

            <!-- 文字を入力するフィールド -->
            <div>
                <h2>説明文を入力</h2>
                <textarea id="content" name="f2" placeholder="ここに文章を入力してください" style="width: 100%; height: 400px; font-size: 1.5em; padding: 20px;"></textarea>
            </div>

            <!-- 投稿ボタンを少し縦幅を小さくしたい場合 -->
            <input type="submit" class="large-btn" value="投稿" style="padding: 20px 80px; font-size: 2em;">
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
