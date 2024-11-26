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

        /* 中央寄せ */
        main {
            display: flex;
            flex-direction: column;
            align-items: center; /* 子要素を横方向に中央揃え */
            justify-content: center; /* 子要素を縦方向に中央揃え */
            min-height: 60vh; /* 中央に配置する領域の高さを設定 */
            text-align: center; /* 文章を中央に配置 */
        }

        .notification-list {
            width: 100%; /* 画面幅いっぱいに設定 */
            max-width: 600px; /* 最大幅を設定して適切なサイズに調整 */
            margin-top: 20px;
        }

        .notification-item {
    		display: flex;
    		justify-content: space-between;
    		align-items: center;
    		margin: 10px 0;
    		padding: 10px;
    		border: 1px solid #ccc;
    		border-radius: 8px;
		}

		.notification-item span {
    		flex-grow: 1; /* タイトル部分がスペースを埋める */
		}

		.notification-item form {
    		margin-left: auto; /* フォームを右寄せにする */
		}


        .notification-item button {
            padding: 5px 20px;
            font-size: 1em;
            border-radius: 5px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
        }

        .notification-item button:hover {
            background-color: #ff4500;
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
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <main>
            <h2>削除したいお知らせを選んで下さい</h2>

            <div class="notification-list">
                <!-- listTitle からお知らせタイトルをループで表示 -->
                <c:forEach var="listTitle1" items="${listTitle}">
                    <div class="notification-item">
                        <!-- お知らせタイトルを表示 -->
                        <span>${listTitle1.nt}</span>
                        <!-- '編集'ボタンを設置 -->
                        <form class="delete-btn-1" action="../manager/NotificationDataDeleteExecute.action" method="post">
                            <input type="submit" value="削除">
                        </form>
                    </div>
                </c:forEach>
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
