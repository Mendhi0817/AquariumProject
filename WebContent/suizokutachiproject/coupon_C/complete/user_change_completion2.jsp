<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ja">
<head>
    <link rel="stylesheet" href="../complete/complete.css">
    <title>水族舘プロジェクト</title>
    <style>
    header {
		    background-color: white; /* 背景色を黒に設定 */
		}
         body {
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* ビューポートの高さを最小限に設定 */
            margin: 0; /* デフォルトのマージンをリセット */
            background-image: url('../picture/sea.png'); /* ここで背景画像を指定 */
            background-size: cover; /* 画像が画面全体に収まるようにする */
            background-position: center; /* 背景画像を中央に配置 */
        }
        header {
            /* ヘッダーのスタイルを追加する場合はここに */
        }
        footer {
            margin-top: auto; /* フッターを画面の下に固定 */
            background-color: rgba(120, 227, 251, 0.8); /* 半透明の背景色 */
            text-align: center; /* 中央揃え（任意） */
            padding: 10px; /* 内側の余白（任意） */
        }
        footer input[type="submit"] {
            padding: 15px 100px; /* ボタンのパディングを大きく */
            font-size: 1.5em; /* フォントサイズを大きく */
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: auto; /* 幅を自動に変更 */
            transition: background-color 0.3s ease; /* 背景色のトランジション */
        }

        footer input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

        /* 戻るボタンのカスタムスタイル */
        .back-button {
            padding: 20px 60px; /* ボタンのパディングを大きく */
            font-size: 1.5em; /* フォントサイズを大きく */
            border: none;
            border-radius: 10px; /* 角を丸く */
            background-color: #ff6347; /* 背景色（オレンジ） */
            color: white; /* 文字色 */
            cursor: pointer;
            transition: background-color 0.3s ease; /* 背景色のトランジション */
            width: 300px; /* ボタンの横幅を統一 */
        }

        .back-button:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        /* 名前変更とメールアドレス変更を中央揃え */
        .content, .input-field {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin-top: 20px; /* 上の余白 */
        }

        /* テキストボックスのスタイル */
        .input-field input {
            padding: 10px;
            font-size: 1.2em;
            width: 300px; /* 横幅を設定 */
            border-radius: 8px; /* 角を丸く */
            border: 1px solid #ccc;
            margin-top: 10px;
        }
        h2{
        font-size: 2em;
        }
	/* 戻るボタンのカスタムスタイル */
.back-button {
    padding: 20px 70px; /* ボタンのパディングをさらに大きく */
    font-size: 2em; /* フォントサイズをさらに大きく */
    border: none;
    border-radius: 10px; /* 角を丸く */
    background-color: #ff6347; /* 背景色（オレンジ） */
    color: white; /* 文字色 */
    cursor: pointer;
    transition: background-color 0.3s ease; /* 背景色のトランジション */
    width: 100%; /* 幅を画面幅に合わせる */
    max-width: 400px; /* 最大幅を設定 */
    margin: 20px auto; /* 上下に余白を追加して中央揃え */
}

.back-button:hover {
    background-color: #ff4500; /* ホバー時の背景色 */
}

    </style>
</head>

<body>
    <div class="container">
    <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
    <h2>ユーザー情報を変更しました</h2>

    <div>
        <form action ="../manager/Change_User_Data_C.action" method="post">
    <input type="submit" value="戻る" class="back-button">
</form>

    </div>
</div>
</body>
</html>

