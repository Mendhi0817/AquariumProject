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

        .content input, .content textarea, .content input[type="date"] {
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

        /* 削除と編集ボタンを左に寄せる */
        .button-container {
            display: flex; /* フレックスボックスを使って横並び */
            justify-content: flex-start; /* ボタンを左端に寄せる */
            gap: 10px; /* ボタン間の隙間 */
        }

        /* 投稿、編集、削除ボタンを小さくするためのスタイル */
        .button-container form input[type="submit"] {
            width: 150px; /* ボタンの横幅を小さく設定 */
            padding: 15px 40px; /* ボタンのパディング */
            font-size: 1em;
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

    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/right_photo.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

        <!-- 戻るボタン -->
        <div class="button-container">
            <form action="../manager/Notification_data_customer.action" method="post">
                <input type="submit" value="戻る">
            </form>
        </div>

        <!-- 通知リストの表示 -->
        <div class="notification-list">
            <c:forEach var="listTitle1" items="${listTitle}">
                <div class="notification-item">
                    <!-- アイテムごとのデータを表示 -->
                    <p><strong>タイトル:</strong> ${listTitle1.nt}</p> <!-- タイトルを表示 -->
                    <p><strong>文章:</strong> ${listTitle1.nc}</p> <!-- 仮にdescriptionというフィールドがあると仮定 -->
                    <p><strong>日付:</strong> ${listTitle1.nd}</p> <!-- 日付を表示 -->
                </div>
            </c:forEach>
        </div>

        <!-- 編集フォーム -->
        <form action="../manager/NotificationDataUpdateExecute.action" method="get">
            <div class="content">

                <input type="text" id="title" name="f1" placeholder="タイトルを入力してください" value="${nAll.nt }">


                <textarea id="content" name="f2" placeholder="ここに文章を入力してください">${nAll.nc }</textarea>

                <!-- 日付入力欄の追加 -->

                <input type="date" id="date" name="f3" value="${nAll.nd }">
            </div>
            <div>
            <input type="hidden" name="ni" value="${ni }">

            </div>
        </form>
    </div>



    <footer>
        <form action="../manager/Home_staff.action" method="post">
            <input type="submit" value="ホーム">
        </form>
        <form action="../manager/Setting.action" method="post">
            <input type="submit" value="設定">
        </form>
    </footer>
</body>
</html>