<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ja">
<head>
    <link rel="stylesheet" href="../templete/template.css">
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
        .logout-message {
            font-size: 30px; /* 文字サイズを大きく設定 */
            font-weight: bold; /* 太字に設定 */
            text-align: center; /* 中央揃え */
            margin-top: 20px; /* 上部の余白を追加 */
            color: #ff5733; /* 文字色を変更（任意） */
        }

         .home-button {
        font-size: 20px;
        padding: 15px 50px;
        width: 200px;
        height: 100px;
        text-align: center;
        line-height: 50px;
        background-color: #78e3fb; /* ボタンの背景色 */
        border: none; /* ボーダーを消す */
        border-radius: 5px; /* 角を丸くする */
        color: white; /* 文字の色 */
        font-weight: bold; /* 文字を太く */
        cursor: pointer; /* マウスカーソルをポインターに変更 */
        transition: background-color 0.3s ease; /* ホバー時に色が変わるアニメーション */
    }

    .home-button:hover {
        background-color: #4ec5d0; /* ホバー時の背景色 */
    }

    .home-button:focus {
        outline: none; /* フォーカス時のアウトラインを消す */
    }
    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
        <p class="logout-message">新規作成されました!</p>

<form action="../common/login.jsp" method="post">
    <input type="submit" value="ホーム" class="home-button">
</form>

        <!-- ここにクラスを追加 -->
    </div>
    <footer>
        <!-- フッター内容を追加 -->
    </footer>
</body>
</html>
