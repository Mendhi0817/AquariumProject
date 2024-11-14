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
    </style>
</head>

<body>
    <div class="container">
    <aside class="sidebar"><img src="../img/水族舘プロジェクト_右の写真2.png" alt="サイドバー画像"align="right"></aside>
    <header><img src="../img/水族舘プロジェクト_タイトル.png" width="400" height="150"></header>

    <main>
        <h2>削除したいお知らせを選んで下さい</h2>

        <div class="notification-list">
            <!-- 仮のお知らせデータ -->
            <div class="notification-item">
                <span>お知らせタイトル1</span>
                <button onclick="deleteNotification(1)">削除</button>
            </div>
            <div class="notification-item">
                <span>お知らせタイトル2</span>
                <button onclick="deleteNotification(2)">削除</button>
            </div>
            <div class="notification-item">
                <span>お知らせタイトル3</span>
                <button onclick="deleteNotification(3)">削除</button>
            </div>
            <button name="button2">戻る</button>
        </div>
    </main>
</div>

<script>
    function deleteNotification(notificationId) {
        // ここにお知らせ削除の処理を追加します。
        // 実際のアプリケーションでは、AJAXを使ってサーバー側で削除処理を行う場合があります。
        alert('お知らせ ' + notificationId + ' を削除しました');
    }
</script>


</div>
    <footer>
        <button name="button2" onclick="location.href='../home/home J.html'">ホーム</button>
        <button name="button2" onclick="location.href='../setting/setting staff.html'">設定</button>
    </footer>
</body>
