<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ja">
<head>
    <link rel="stylesheet" href="../complete/complete.css">
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
        footer input[type="submit"] {
            padding: 15px 80px; /* ボタンのパディングを大きく */
            font-size: 1.5em; /* フォントサイズを大きく */
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 300px; /* 横幅を広げて統一 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

        /* 戻るボタンのカスタムスタイル */
        .back-button {
            padding: 60px 100px; /* ボタンのパディングを大きく */
            font-size: 1.5em; /* フォントサイズを大きく */
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff4500; /* 背景色（オレンジ） */
            color: white; /* 文字色 */
            cursor: pointer;
            transition: background-color 0.3s ease; /* 背景色のトランジション */
        }

        .back-button:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        /* 「編集しました」のスタイル */
        .edit-message {
            font-size: 3em; /* フォントサイズを大きく */
            font-weight: bold; /* 文字を太字に */
            text-align: left; /* 左寄せ */
            margin-left: 20px; /* 左に余白を追加 */
            margin-top: 10px; /* 上の余白 */
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
    </style>
</head>

<body>
    <div class="container">
    <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

    <div class="edit-message">削除しました</div>

    <div>
        <form action="../manager/Notification_data_delete.action" method="post">
            <input type="submit" value="戻る" class="back-button">
        </form>
    </div>

</div>

</body>
</html>

