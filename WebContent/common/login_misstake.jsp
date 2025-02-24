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


        /* すべてのsubmitボタンに対して共通のスタイルを適用 */
        input[type="submit"] {
            padding: 30px 80px; /* ボタンのパディング */
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

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }



        .notification-list {
            display: flex;
            flex-direction: row; /* 横並びにする */
            justify-content: space-between; /* タイトルとボタンを左右に配置 */
            align-items: center; /* 垂直方向に中央揃え */
            margin-top: 20px;
            flex-wrap: wrap; /* 横並びがはみ出さないようにラップ */
        }

        .notification-item {
            display: flex;
            justify-content: space-between; /* タイトルとボタンを横並びにする */
            align-items: center;
            margin: 15px 0; /* マージンを大きくしてアイテムの間隔を広げる */
            padding: 15px; /* パディングを大きくしてスペースを広げる */
            border: 1px solid #ccc; /* 枠線を追加 */
            border-radius: 8px; /* 角を丸く */
            font-size: 1.3em; /* フォントサイズを大きく */
            background-color: #f9f9f9; /* 背景色を淡い色に変更 */
            width: 900%; /* アイテムの幅を100%にしてラップさせる */
            max-width: 550px; /* 最大幅を900pxに変更 */
        }

        /* '編集'ボタンのスタイル */
        .notification-item button {
            padding: 100px 25px;
            font-size: 1.1em;
            border-radius: 5px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
        }

        .notification-item button:hover {
            background-color: #ff4500;
        }

        /* '編集'ボタンをお知らせタイトルの横に配置 */
        .notification-item span {
            flex-grow: 1; /* タイトルがボタンを圧迫しないように横幅を調整 */
            text-align: left; /* タイトルを左寄せ */
            padding-right: 20px; /* タイトルとボタンの間にスペースを追加 */
        }

        /* '削除1'ボタンを小さくするスタイル */
        .delete-btn-1 input[type="submit"] {
            padding: 5px 10px; /* ボタンのパディングを小さく */
            font-size: 1em; /* フォントサイズを小さく */
            width: 60px; /* 横幅を小さく */
            margin-top: 20px; /* ボタンを少し下に移動 */
        }
        p{
         font-size: 2em; /* フォントサイズを小さく */
        }
    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
        <p class="logout-message">メールアドレス、またはパスワードが違います</p>

         <form action = "../common/login.jsp" method = "post"><input type = "submit" value = "ホーム"></form>




        <!-- ここにクラスを追加 -->
    </div>
    <footer>
        <!-- フッター内容を追加 -->
    </footer>
</body>
</html>
