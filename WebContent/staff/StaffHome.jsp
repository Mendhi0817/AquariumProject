<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\ホーム画面_職員.css">
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
            <img src="水族舘プロジェクト_右の写真2.png" alt="サイドバー画像" align="right">
        </aside>
        <header>
            <img src="水族舘プロジェクト_タイトル.png" width="400" height="150">
        </header>

        <div class="button-container">
            <button name="mapPost"  onclick="location.href='マップ投稿.html'">マップ投稿</button>
            <button name="newsPost" onclick="location.href='お知らせ投稿.html'">お知らせ投稿</button>
            <button name="fishCard" onclick="location.href='魚カード.html'">魚カード</button>
            <button name="couponCreate" onclick="location.href='クーポン作成.html'">クーポン作成</button>
        </div>
    </div>

    <footer>
        <button name="button2" onclick="location.href='ホーム画面_職員.html'">ホーム</button>
        <button name="button2" onclick="location.href='設定画面_職員.html'">設定</button>
    </footer>
</body>
</html>