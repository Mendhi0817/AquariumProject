<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ja">
<head>
    <link rel="stylesheet" href="../news_post/notice post.css">
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
            padding: 8px 25px;
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


    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <main>
            <h2>閲覧したいお知らせを選んで下さい</h2>

            <div class="notification-list">
                <!-- listTitle からお知らせタイトルをループで表示 -->
                <div class="title-list">
                <c:forEach var="listTitle1" items="${listTitle}">
                    <div class="notification-item">
                        <!-- お知らせタイトルを表示 -->
                        <span>${listTitle1.nt}</span>
                    </div>
                </c:forEach>
               </div>
               <div class="button-list">
                <c:forEach var="listId1" items="${listId}">
                        <!-- '編集'ボタンを設置 -->
                        <form class="delete-btn-1" action="../manager/NotificationDataList_C.action" method="post">
                            <input type="hidden" name="ni" value="${listId1.ni }">
                            <input type="submit" value="閲覧">
                        </form>
                </c:forEach>
                </div>
            </div>

            <form action="../manager/Home_customer.action" method="post">
                <input type="submit" value="戻る">
            </form>
        </main>
    </div>

    <footer>
        <div class="footer-buttons">
            <!-- ホーム、マップボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/Home_customer.action" method="post">
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