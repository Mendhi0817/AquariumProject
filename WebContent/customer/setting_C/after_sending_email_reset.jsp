<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="../setting_C/setting_C.css">
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

    <div class="form-container">
        <label for="email">新パスワードを入力して下さい:</label>
        <input type="email" id="email" name="email">
        <button type="submit">変更</button>
    </div>

</div>
    <footer>
        <button name="button2" onclick="location.href='../home/home j.html'">ホーム</button>
        <button name="button2" onclick="location.href='../setting/setting staff.html'">設定</button>
        <button name="button2">マップ</button>
        <button name="button2">お知らせ</button>

    </footer>
</body>
</html>