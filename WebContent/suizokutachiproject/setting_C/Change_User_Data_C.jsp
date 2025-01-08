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
            padding: 10px 60px; /* ボタンのパディング */
            font-size: 1.2em;
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            cursor: pointer;
            width: 250px; /* 横幅を統一（ホームと設定ボタンも同じ幅） */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
        }

        /* 戻るボタンのカスタムスタイル */
        .back-button {
            padding: 15px 40px; /* ボタンのパディング */
            font-size: 1.2em; /* フォントサイズ */
            border: none;
            border-radius: 8px; /* 角を丸く */
            background-color: #ff4500; /* 背景色（青色） */
            color: white; /* 文字色 */
            cursor: pointer;
            transition: background-color 0.3s ease; /* 背景色のトランジション */
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

		/* フッターのボタン配置調整 */
        footer .footer-buttons {
            display: flex;
            flex-direction: column;
            gap: 20px; /* ボタン間の垂直スペースを設定 */
        }

        footer .footer-buttons .row {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
        }

        /* 新しく追加した中央寄せのスタイル */
        .footer-buttons .row-center {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
            width: 100%;
        }
    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar">
            <img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right">
        </aside>
        <header>
            <img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150">
        </header>

        <!-- 戻るボタンのフォーム -->
        <div>
            <form action="../manager/Setting_C.action" method="post">
                <input type="submit" value="戻る" class="back-button">
            </form>
        </div>


            <form action="../manager/Change_complete.action" method="post">
 		<!-- 現在のパスワードを入力 -->
        <div class="content">
            <div>パスワード</div>
            <div class="input-field">
                <input type="text" name="email" placeholder="パスワードを入力">
            </div>
        </div>


        <!-- 名前の変更 -->
        <div class="content">
            <div>名前の変更</div>
            <div class="input-field">
                <input type="text" name="name" placeholder="新しい名前を入力">
            </div>
        </div>

        <!-- メールアドレスの変更 -->
        <div class="content">
            <div>メールアドレスの変更</div>
            <div class="input-field">
                <input type="text" name="email" placeholder="新しいメールアドレスを入力">
            </div>
        </div>

        <div class="content">

                <input type="submit" value="変更" class="back-button">
            </form>
        </div>
    </div>

      <footer>
        <div class="footer-buttons">
            <!-- ホーム、マップボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/FishCardList.action" method="post">
                    <input type="submit" value="ホーム">
                </form>
                <form action="../manager/MapView.action" method="post">
                    <input type="submit" value="マップ">
                </form>
            </div>

            <!-- お知らせ、設定ボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/Notification_data_customer.action" method="post">
                    <input type="submit" value="お知らせ">
                </form>
                <form action="../manager/Setting_C.action" method="post">
                    <input type="submit" value="設定">
                </form>
            </div>
        </div>
    </footer>
</body>
</html>