<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="../ホーム画面/home J.css">
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
        .button-container {
            text-align: center; /* ボタンを中央揃え */
            margin: 20px 0; /* ボタンの上下マージン */
        }
    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar">
            <img src="<%= request.getAttribute("imagePath") != null ? request.getAttribute("imagePath") : "../画像/水族舘プロジェクト_右の写真2.png" %>" alt="サイドバー画像" align="right">
        </aside>
        <header>
            <img src="<%= request.getAttribute("headerImagePath") != null ? request.getAttribute("headerImagePath") : "../画像/水族舘プロジェクト_タイトル.png" %>" width="400" height="150">
        </header>

        <div class="button-container">
            <button name="mapPost" onclick="location.href='<%= request.getAttribute("mapPostURL") != null ? request.getAttribute("mapPostURL") : "../マップ投稿/map post.html" %>'">マップ投稿</button>
            <button name="newsPost" onclick="location.href='<%= request.getAttribute("newsPostURL") != null ? request.getAttribute("newsPostURL") : "../お知らせ投稿/notice post.html" %>'">お知らせ投稿</button>
            <button name="fishCard" onclick="location.href='<%= request.getAttribute("fishCardURL") != null ? request.getAttribute("fishCardURL") : "../魚カード/fish card.html" %>'">魚カード</button>
            <button name="couponCreate" onclick="location.href='<%= request.getAttribute("couponCreateURL") != null ? request.getAttribute("couponCreateURL") : "../クーポン作成/coupon.html" %>'">クーポン作成</button>
        </div>
    </div>

    <footer>
        <button name="button2" onclick="location.href='<%= request.getAttribute("homeURL") != null ? request.getAttribute("homeURL") : "../ホーム画面/home J.html" %>'">ホーム</button>
        <button name="button2" onclick="location.href='<%= request.getAttribute("settingsURL") != null ? request.getAttribute("settingsURL") : "../設定/setting staff.html" %>'">設定</button>
    </footer>
</body>
</html>
