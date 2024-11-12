<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="../home/home J.css">
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
            <img src="../img/水族舘プロジェクト_右の写真2.png" alt="サイドバー画像" align="right">
        </aside>
        <header>
            <img src="../img/水族舘プロジェクト_タイトル.png" width="400" height="150">
        </header>

        <div class="button-container">
            <button name="mapPost" onclick="location.href='../map_post/map post.html'">マップ</button>
            <button name="newsPost" onclick="location.href='../news_post/notice post.html'">お知らせ投稿</button>
            <button name="fishCard" onclick="location.href='../fish_card/fish card.html'">魚カード</button>
            <button name="couponCreate" onclick="location.href='../coupon_make/coupon.html'">クーポン作成</button>
        </div>
    </div>

    <footer>
        <button name="button2" onclick="location.href='../home/home J.html'">ホーム</button>
        <button name="button2" onclick="location.href='../setting/setting staff.html'">設定</button>
    </footer>
</body>
</html>