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
            padding: 40px 200px; /* ボタンのパディング */
            font-size: 2.0em;
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

        .notification-item {
            display: flex;
            justify-content: space-between; /* タイトルとボタンを横並びにする */
            align-items: flex-start; /* ボタンを上寄せして左に配置 */
            margin: 15px 0; /* マージンを大きくしてアイテムの間隔を広げる */
            padding: 50px; /* パディングを大きくしてスペースを広げる */
            border: 1px solid #ccc; /* 枠線を追加 */
            border-radius: 8px; /* 角を丸く */
            font-size: 1.5em; /* フォントサイズを大きく */
            background-color: #f9f9f9; /* 背景色を淡い色に変更 */
            */
            max-width: 750px; /* 最大幅を750pxに変更 */
            box-sizing: border-box; /* パディングやボーダーを含めた幅にする */
        }

        .notification-list {
            display: flex;
            flex-direction: row; /* 横並びにする */
            justify-content: space-between; /* タイトルとボタンを左右に配置 */
            align-items: center; /* 垂直方向に中央揃え */
            margin-top: 20px;
            flex-wrap: wrap; /* 横並びがはみ出さないようにラップ */
            gap: 20px; /* アイテム間に隙間を追加 */
            margin-right: 0; /* 右の余白を消す */
            padding-right: 0; /* 右のパディングを消す */
        }

        /* '削除1'ボタンを小さくするスタイル */
        .delete-btn-1 input[type="submit"] {
            padding: 30px 100px; /* ボタンの縦幅を大きくするためにパディングを増やす */
            font-size: 2.0em; /* フォントサイズを少し大きくする */
            width: 100px; /* 横幅はそのまま */
            margin-top: 20px; /* ボタンを少し下に移動 */
        }

        .title-list {
    width: 75%; /* 幅を80%に設定 */
    margin-right: 0%; /* 右側に余白を設定 */
}

 footer form input[type="submit"] {
        width: 300px; /* ボタンの横幅を大きく設定 */
        padding: 60px 60px; /* ボタンのパディングを大きく設定 */
        font-size: 2em; /* フォントサイズを大きく設定 */
    }
    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <main>
            <h2>編集したいお知らせを選んで下さい</h2>

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
                        <form class="delete-btn-1" action="../manager/NotificationDataEditDetail.action" method="post">
                            <input type="hidden" name="ni" value="${listId1.ni }">
                            <input type="submit" value="編集 ">
                        </form>
                </c:forEach>
                </div>
            </div>

            <form action="../manager/Notification_data_Post.action" method="post">
                <input type="submit" value="戻る">
            </form>
        </main>
    </div>

    <footer>
        <form action="../manager/Home_staff.action" method="post"><input type="submit" value="ホーム"></form>
        <form action="../manager/Setting.action" method="post"><input type="submit" value="設定"></form>
    </footer>
</body>
</html>

