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

        /* ボタンを中央に寄せ、共通のスタイルを設定 */
        .button-container, .button-group {
            display: flex;
            justify-content: center; /* ボタンを中央揃え */
            gap: 20px; /* ボタン間の隙間を設定 */
            margin-top: 20px; /* 上部に余白 */
        }

        .button-container button, .button-group input[type="submit"] {
            padding: 10px 40px; /* ボタンのパディング */
            font-size: 1.2em; /* ボタンの文字サイズ */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px; /* 横幅を統一（例として250pxを設定） */
        }

        .button-container button:hover, .button-group input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        footer form {
            display: inline-block;
            margin: 0 10px; /* フォーム間の余白 */
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

        footer input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        /* BGMの文字を大きくして中央に配置 */
        .bgm-text {
            font-size: 3em; /* フォントサイズを大きく */
            font-weight: bold; /* 太字 */
            text-align: center; /* 中央揃え */
            margin-top: 30px; /* 上部に余白 */
            color: black; /* 文字色を黒に変更 */
        }

        /* ログアウトボタンをパスワード変更ボタンと同じデザインに変更 */
        .logout-button-container {
            display: flex;
            justify-content: center; /* 中央揃え */
            gap: 20px; /* ボタン間の隙間 */
            margin-top: 20px; /* 上部に余白 */
        }

        /* ログアウトボタンのスタイルをパスワード変更ボタンと同じに */
        .logout-button-container form input[type="submit"] {
            padding: 10px 40px; /* パスワード変更ボタンと同じパディング */
            font-size: 1.2em; /* パスワード変更ボタンと同じ文字サイズ */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* パスワード変更ボタンと同じ背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 250px; /* 横幅を統一 */
        }

        .logout-button-container form input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
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


		header {
		    background-color: white; /* 背景色を黒に設定 */
		}
 body {
    display: flex;
    flex-direction: column;
    min-height: 100vh; /* ビューポートの高さを最小限に設定 */
    margin: 0; /* デフォルトのマージンをリセット */
    background-image: url('../picture/sea.png'); /* 背景画像を設定 */
    background-size: cover; /* 背景画像をビューポート全体にフィット */
    background-position: center; /* 背景画像を中央に配置 */
    background-attachment: fixed; /* スクロールしても背景が動かないように設定 */

    footer input[type="submit"], footer .footer-buttons input[type="submit"] {
    padding: 20px 80px; /* ボタンの縦横の余白を増加 */
    font-size: 1.5em; /* フォントサイズを大きく */
    width: 300px; /* 横幅も少し広げる */
}
footer input[type="submit"], footer .footer-buttons input[type="submit"] {
        padding: 40px 80px; /* ボタンの縦横の余白を増加 */
        font-size: 2em; /* フォントサイズを大きく */
        width: 300px; /* 横幅も少し広げる */
    }

    footer .footer-buttons .row-center {
        display: flex;
        justify-content: center;
        gap: 20px; /* ボタン間の水平スペースを設定 */
        width: 100%;
    }

    footer .footer-buttons .row {
        display: flex;
        justify-content: center;
        gap: 20px; /* ボタン間の水平スペースを設定 */
    }

    /* 既存の入力欄のスタイルに対する変更 */
.content input {
    width: 100%; /* 幅を広げる */
    padding: 5px; /* 内側の余白を増加 */
    margin: 20px 0; /* マージンを増加 */
    border: 1px solid #ccc;
    border-radius: 10px; /* 角を丸く */
    font-size: 2em; /* フォントサイズを大きく */
    height: 75px; /* 高さを大きく */
}

/* 変更ボタン */
.content input[type="submit"] {
    font-size: 2em; /* フォントサイズを大きく */
    background-color: #ff6347; /* ホームボタンと同じ色に */
    color: white; /* 文字色 */
    border-radius: 8px; /* 角を丸く */
    cursor: pointer; /* ポインターを表示 */
}

.content input[type="submit"]:hover {
    background-color: #ff4500; /* ホームボタンと同じホバー色 */
}

.content div {
    font-size: 2em; /* フォントサイズを大きく設定 */
    font-weight: bold; /* 太字に設定（任意） */
    margin-bottom: 10px; /* 下に少し余白を追加 */
}

.back-button {
    padding: 20px 60px; /* ボタンの縦横の余白を増加 */
    font-size: 1.5em; /* フォントサイズを大きく */
    border-radius: 8px; /* 角を丸く */
    background-color: #ff6347; /* ボタンの背景色 */
    color: white; /* 文字色 */
    border: none; /* ボーダーを消す */
    cursor: pointer; /* マウスオーバー時にポインターを表示 */
    width: 300px; /* 横幅を広げる */
}

.back-button:hover {
    background-color: #ff4500; /* ホバー時の背景色 */
}

    </style>
</head>

<body>
    <div class="container">
<header>
        <a href="../manager/FishCardList.action" class="title-logo-link">
                <img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150">
            </a>
            </header>
    	<!-- 戻るボタンのフォーム -->
        <div>
            <form action="../manager/Setting_C.action" method="post">
                <input type="submit" value="戻る" class="back-button">
            </form>
        </div>


            <form action="../manager/Change_User_Data_Complete.action" method="post">
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
                <form action="../manager/CouponCustomer.action" method="post">
                    <input type="submit" value="クーポン">
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