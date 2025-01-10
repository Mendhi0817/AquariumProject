<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ja">
<head>
    <link rel="stylesheet" href="../setting/setting staff.css">
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

        /* 階数入力欄のスタイル */
        .content input, .content textarea {
            width: 50%;
            padding: 15px; /* パディングを少し大きく */
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1.2em; /* フォントサイズを大きく */
        }

        .content textarea {
            height: 300px;
        }

        /* 「階を入力:」ラベルのフォントサイズ */
        label {
            font-size: 1.5em; /* ラベルのフォントサイズを大きく */
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }

        /* ボタンを小さくするためのスタイル */
        .button-container, .button-group {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        /* 小さなボタン */
        .button-container button, .button-container input[type="submit"], .button-container form button {
            padding: 10px 30px;  /* ボタンのパディングを小さく */
            font-size: 1em;  /* フォントサイズを小さく */
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
            width: auto;  /* ボタンの横幅を自動調整 */
            max-width: 100%;
        }

        /* ボタンホバー時の背景色 */
        .button-container button:hover, .button-container input[type="submit"]:hover,
        .button-container form button:hover {
            background-color: #ff4500;
        }

        footer form {
            display: inline-block;
            margin: 0 10px;
        }

        footer input[type="submit"] {
            padding: 10px 30px;  /* 小さなボタン */
            font-size: 1em;
            border: none;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            cursor: pointer;
            width: 200px;  /* 横幅を統一 */
        }

        footer input[type="submit"]:hover {
            background-color: #ff4500;
        }

        .bgm-text {
            font-size: 3em;
            font-weight: bold;
            text-align: center;
            margin-top: 30px;
            color: black;
        }

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <!-- 新しいフォームセクション -->
        <div class="position">
            <div class="form-container">
                <!-- 削除ボタン -->
                <form action="MapDelete.action" method="post">
                    <div class="button-container">
                        <button name="delete">削除</button>
                    </div>
                </form>

                <!-- 文字を入力するフィールド -->
                <form action ="../manager/MapPostDone.action" method = "post" enctype="multipart/form-data">
                    <div>
                        <label for="textInput">階数を入力：</label>
                        <input type="text" id="textInput" name="textInput" placeholder="階数を入力してください">
                    </div>

                    <!-- PDFファイルをアップロードするフィールド -->
                    <div>
                        <label for="pdfUpload">マップの写真をアップロードして下さい：</label>
                        <input type="file" id="pdfUpload" name="pdfUpload" accept="application/pdf">
                    </div>

                    <!-- 投稿ボタン -->
                    <div class="button-container">
                        <input type="submit" value="投稿">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer>
        <form action ="../manager/Home_staff.action" method = "post"><input type = "submit" value = "ホーム"></form>
        <form action ="../manager/Setting.action" method = "post"><input type = "submit" value = "設定"></form>
    </footer>
</body>
</html>
