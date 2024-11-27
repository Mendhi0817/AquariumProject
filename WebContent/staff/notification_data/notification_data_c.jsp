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

		/* お知らせリストのスタイル */
.notification-list {
    margin-top: 30px; /* 上部に余白 */
    padding: 20px; /* 内側の余白 */
    background-color: #f0f8ff; /* 背景色（薄い青） */
    border-radius: 10px; /* 角を丸く */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 軽い影を追加 */
}

.notification-item {
    background-color: #ffffff; /* お知らせの背景色 */
    margin-bottom: 15px; /* お知らせ項目間の余白 */
    padding: 15px; /* 内側の余白 */
    border-radius: 8px; /* 角を丸く */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 軽い影 */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* ホバー時のアニメーション */
}

.notification-item:hover {
    transform: translateY(-5px); /* ホバー時に少し上に移動 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* ホバー時に影を強く */
}

.notification-item span {
    font-size: 1.4em; /* お知らせタイトルの文字サイズ */
    color: #333; /* 文字色（濃い灰色） */
    font-weight: bold; /* 太字 */
    display: block; /* ブロック要素にして横幅いっぱいに表示 */
    margin-bottom: 10px; /* 下部に余白 */
}

.notification-item .date {
    font-size: 0.9em; /* 日付の文字サイズ */
    color: #888; /* 日付の文字色（薄い灰色） */
    text-align: right; /* 右寄せ */
}

/* お知らせリストの最終アイテムには下の余白をなくす */
.notification-item:last-child {
    margin-bottom: 0;
}

.notification-list {
    margin-top: 30px; /* 上部に余白 */
    padding: 20px; /* 内側の余白 */
    background-color: #f0f8ff; /* 背景色（薄い青） */
    border-radius: 10px; /* 角を丸く */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 軽い影を追加 */
    width: 50%; /* 幅を50%に設定 */
    margin-left: 0; /* 左寄せ */
}

.notification-item {
    background-color: #ffffff; /* お知らせの背景色 */
    margin-bottom: 15px; /* お知らせ項目間の余白 */
    padding: 15px; /* 内側の余白 */
    border-radius: 8px; /* 角を丸く */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 軽い影 */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* ホバー時のアニメーション */
    width: 100%; /* お知らせの横幅を100%に設定 */
}

.notification-item:hover {
    transform: translateY(-5px); /* ホバー時に少し上に移動 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* ホバー時に影を強く */
}

.notification-item span {
    font-size: 1.4em; /* お知らせタイトルの文字サイズ */
    color: #333; /* 文字色（濃い灰色） */
    font-weight: bold; /* 太字 */
    display: block; /* ブロック要素にして横幅いっぱいに表示 */
    margin-bottom: 10px; /* 下部に余白 */
}

.notification-item .date {
    font-size: 0.9em; /* 日付の文字サイズ */
    color: #888; /* 日付の文字色（薄い灰色） */
    text-align: right; /* 右寄せ */
}

/* お知らせリストの最終アイテムには下の余白をなくす */
.notification-item:last-child {
    margin-bottom: 0;
}


    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
             <div class="notification-list">
                <!-- listTitle からお知らせタイトルをループで表示 -->
                <c:forEach var="listTitle1" items="${listTitle}">
                    <div class="notification-item">
                        <!-- お知らせタイトルを表示 -->
                        <span>${listTitle1.nt}</span>
                    </div>
                </c:forEach>
                <c:forEach var="listId1" items="${listId}">
                            <input type="hidden" name="ni" value="${listId1.ni }">

                </c:forEach>
                <c:forEach var="listId1" items="${listId}">
                        <!-- '編集'ボタンを設置 -->
                        <form class="delete-btn-1" action="../manager/NotificationDataList_C.action" method="post">
                            <input type="hidden" name="ni" value="${listId1.ni }">
                            <input type="submit" value="閲覧">
						</form>
                </c:forEach>
            </div>
		</div>

    <footer>
        <div class="footer-buttons">
            <form action="../manager/Home_staff.action" method="post">
                <input type="submit" value="ホーム">
            </form>
            <form action="../manager/Map.action" method="post">
                <input type="submit" value="マップ">
            </form>
            <form action="../manager/NotificationData.action" method="post">
                <input type="submit" value="お知らせ">
            </form>
            <form action="../manager/Setting.action" method="post">
                <input type="submit" value="設定">
            </form>
        </div>
    </footer>
</body>
</html>