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

                .coupon-list {
            display: flex;
            flex-direction: row; /* 横並びにする */
            justify-content: space-between; /* タイトルとボタンを左右に配置 */
            align-items: center; /* 垂直方向に中央揃え */
            margin-top: 20px;
            flex-wrap: wrap; /* 横並びがはみ出さないようにラップ */
        }

                .coupon-item {
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

                .notification-item button {
            padding: 8px 25px;
            font-size: 1.1em;
            border-radius: 5px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
        }

        .coupon-item button:hover {
            background-color: #ff4500;
        }

        /* '編集'ボタンをお知らせタイトルの横に配置 */
        .coupon-item span {
            flex-grow: 1; /* タイトルがボタンを圧迫しないように横幅を調整 */
            text-align: left; /* タイトルを左寄せ */
            padding-right: 20px; /* タイトルとボタンの間にスペースを追加 */
        }

        .delete-btn-1 input[type="submit"] {
   padding: 8px 25px;
   font-size: 1.1em;
   border-radius: 5px;
   background-color: #ff6347;
   color: white;
   border: none;
   cursor: pointer;
   margin-top: 10px;  /* 上部の余白を追加 */
   margin-bottom: 10px;  /* 下部の余白を追加 */
}

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

   <h1>クーポン一覧</h1>


	<div class ="coupon-list">

	<div class="title-list">
		<c:forEach var="coupon" items="${listTitle}">

		<div class="coupon-item">


                <span>${coupon.COUPON_TITLE}</span>

                </div>


        </c:forEach>

        </div>

        <div class = "button-list">

        <c:forEach var="coupon" items="${listId}">



                <form class = "delete-btn-1" action="../manager/CouponCustomerDetail.action" method = "post">
                <input type = "hidden" name = "COUPON_ID" value = "${coupon.COUPON_ID }">
                <input type = "submit" value = "詳細">
                </form>

               </c:forEach>
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