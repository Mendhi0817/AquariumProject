<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>水族館プロジェクト ログイン</title>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
</head>
<style>
    /* 基本的なスタイルリセット */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Arial', sans-serif;
        background-color: #00000; /* 淡い水色 */
        color: #333;
        display: flex;
        flex-direction: column;
        justify-content: flex-start; /* 上寄せに変更 */
        align-items: center;
        min-height: 100vh;
        padding-top: 40px; /* 上の余白を調整 */
    }

    header {
        text-align: center;
        margin-bottom: 2em; /* ヘッダーの下に余白を追加 */
    }

    header img {
        width: 60%;
        max-width: 500px;
        margin-bottom: 2em;
    }

    .login-form {
        background-color: white;
        padding: 2em;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
        margin: 0 auto;
        margin-top: -50px; /* ログインフォームを上に移動 */
    }

    .login-form p {
        margin-bottom: 1.5em;
        font-size: 1rem;
        font-weight: 500;
    }

    .login-form input[type="text"],
    .login-form input[type="password"] {
        width: 100%;
        padding: 12px;
        border: 2px solid #ddd;
        border-radius: 4px;
        font-size: 1rem;
        margin-top: 0.5em;
    }

    .login-form input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #78e3fb;
        border: none;
        border-radius: 4px;
        font-size: 1.1rem;
        cursor: pointer;
        margin-top: 1.5em;
        transition: background-color 0.3s ease;
    }

    .login-form input[type="submit"]:hover {
        background-color: #5bc0de;
    }

    footer {
        background-color: #78e3fb;
        padding: 15px;
        text-align: center;
        position: absolute;
        bottom: 0;
        width: 100%;
    }

    footer button {
        background-color: #fff;
        border: 2px solid #78e3fb;
        border-radius: 20px;
        padding: 10px 20px;
        font-size: 1rem;
        cursor: pointer;
        margin: 0 10px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    footer button:hover {
        background-color: #78e3fb;
        color: white;
    }

    /* レスポンシブ対応 */
    @media (max-width: 768px) {
        header img {
            width: 80%;
        }

        .login-form {
            padding: 1.5em;
        }

        footer button {
            padding: 8px 18px;
        }
    }
</style>

<body>
    <header>
        <img src="../picture/suizokutachiproject_titlelogo.png" alt="水族館プロジェクト ロゴ">
    </header>

    <div class="login-form">
        <form action="../manager/Login.action" method="post">
            <p><label for="email">メールアドレス</label><br>
            <input type="text" id="email" name="email" placeholder="メールアドレス" required></p>

            <p><label for="password">パスワード</label><br>
            <input type="password" id="password" name="password" placeholder="パスワード" required></p>

            <input type="submit" value="ログイン">
        </form>
    </div>

    <footer>
        <button onclick="location.href='password_reset.jsp'">パスワードを忘れた方</button>
        <button onclick="location.href='new_account.jsp'">新規作成</button>
    </footer>
</body>
</html>

