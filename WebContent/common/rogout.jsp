<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>設定画面</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            flex-direction: column;
        }
        .container {
            display: flex;
            flex: 1;
            position: relative;
        }
        .main {
            flex: 1;
            display: flex;
            flex-direction: column;
            padding: 20px;
            box-sizing: border-box;
            justify-content: center;
            align-items: center;
        }
        .logo {
            position: absolute;
            top: 10px;
            left: 10px;
            width: 40px; /* ロゴの大きさ */
            height: auto;
        }
        .next-item {
            position: absolute;
            top: 10px;
            right: 150px; /* 左に寄せる */
        }
        .main button {
            padding: 10px 20px;
        }
        .right-panel {
            width: 150px;
            text-align: center;
            padding: 10px;
            box-sizing: border-box;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .right-panel img {
            width: 100%;
            height: auto;
            max-height: 100%;
            object-fit: cover;
        }
        footer {
            background-color: #f0f0f0;
            text-align: center;
            padding: 10px;
        }
        footer button {
            margin: 0 10px;
            padding: 10px 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="file:///C:/Users/the/git/AquariumProject/WebContent/picture/お魚さん.jpg" alt="ロゴ" class="logo">
        <div class="next-item">[次の項目]</div>
        <div class="main">
            <button>ログアウト</button>
        </div>
        <div class="right-panel">
            <img src="file:///C:/Users/the/git/AquariumProject/WebContent/picture/right_photo.png" alt="魚の写真">
        </div>
    </div>
    <footer>
        <button>ホーム</button>
        <button>設定</button>
    </footer>
</body>
</html>
