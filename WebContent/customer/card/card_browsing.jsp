
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

        /* h1 タグを中央に配置 */
        h1 {
            text-align: center; /* 中央揃え */
            font-size: 2em; /* フォントサイズ調整 */
            margin: 20px 0; /* 上下マージンを追加 */
        }

        /* QRコードボタンのスタイル */
        .qr-code form {
            display: flex;
            justify-content: center; /* フォーム全体を中央寄せ */
            align-items: center; /* 垂直方向にも中央寄せ */
            margin-top: 30px; /* 上部の余白 */
        }

        .qr-code form input[type="submit"] {
            font-size: 1.5em; /* フォントサイズを大きく */
            padding: 15px 50px; /* ボタンのパディング */
            background-color: #ff6347; /* 背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            border-radius: 8px; /* 角を丸く */
            cursor: pointer; /* ポインターを表示 */
            transition: background-color 0.3s ease; /* ホバー時に背景色が変わるトランジション */
        }

        .qr-code form input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

        /* 魚のカードのスタイル変更 */
        .fish-photo .fishcard-item {
            display: flex; /* フレックスボックスで並べる */
            align-items: center; /* 垂直方向に中央揃え */
            gap: 20px; /* 画像とテキストの間に隙間 */
            margin-bottom: 20px; /* カード間の余白 */
        }

        .fish-photo .fishcard-item img {
            max-width: 250px; /* 画像の最大幅 */
            max-height: 200px; /* 画像の最大高さ */
            object-fit: cover; /* 画像を切り取って表示 */
        }

        .fish-photo .fishcard-item span {
            font-size: 1.2em; /* テキストのフォントサイズ */
            text-align: left; /* テキストを左寄せ */
            max-width: 500px; /* テキストの最大幅 */
        }


    .fish-photo .fishcard-item {
        display: flex; /* フレックスボックスで並べる */
        align-items: flex-start; /* 上揃えにする */
        gap: 20px; /* 画像とテキストの間に隙間 */
        margin-bottom: 20px; /* カード間の余白 */
        flex-wrap: wrap; /* アイテムが折り返せるように設定 */
    }

    .fish-photo .fishcard-item img {
        max-width: 250px; /* 画像の最大幅 */
        max-height: 200px; /* 画像の最大高さ */
        object-fit: cover; /* 画像を切り取って表示 */
    }

    .fish-photo .fishcard-item div {
        flex: 1; /* テキスト部分が残りのスペースを占める */
        min-width: 200px; /* 最小幅を設定 */
    }

    .fish-photo .fishcard-item span {
        font-size: 1.2em; /* テキストのフォントサイズ */
        text-align: left; /* テキストを左寄せ */
        max-width: 100%; /* 最大幅を100%に設定し、親の幅に合わせる */
        word-wrap: break-word; /* 単語の途中で折り返しを可能に */
    }
</style>

</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <header>
            <h1>魚の写真</h1> <!-- h1 タグを中央に配置 -->
        </header>

        <div class="content">
            <div class="fish-photo">
                <!-- listTitle からお知らせタイトルをループで表示 -->
                <c:forEach var="listTitle1" items="${FishCardList}">
                    <div class="fishcard-item">
                        <!-- 画像を左に、テキストを右に表示 -->
                        <img src="viewImage?imagePath=${listTitle1.cardImage}" alt="${listTitle1.cardTitle}">
                        <div>
                            【<span>${listTitle1.cardTitle}</span>】<br>
                            <span>${listTitle1.cardText}</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="qr-code">
                <!-- QRコード読み取りボタン -->
                <form action="../manager/Camera.action" method="post">
                    <input type="submit" value="QRコード" class="qr-code-button">
                </form>
            </div>
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
