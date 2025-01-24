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

		/* フッターのボタン配置調整 */
        footer .footer-buttons {
            display: flex;
            flex-direction: column;
            gap: 20px; /* ボタン間の垂直スペースを設定 */
        }

        footer .footer-buttons .row {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
        }

        /* 新しく追加した中央寄せのスタイル */
        .footer-buttons .row-center {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
            width: 100%;
        }


		header {
		    background-color: white; /* 背景色を黒に設定 */
		}
 body {
    display: flex;
    flex-direction: column;
    min-height: 100vh; /* ビューポートの高さを最小限に設定 */
    margin: 0; /* デフォルトのマージンをリセット */
    background-image: url('../picture/sea.png'); /* 背景画像を設定 */
    background-size: cover; /* 背景画像をビューポート全体にフィット */
    background-position: center; /* 背景画像を中央に配置 */
    background-attachment: fixed; /* スクロールしても背景が動かないように設定 */

    footer input[type="submit"], footer .footer-buttons input[type="submit"] {
    padding: 20px 80px; /* ボタンの縦横の余白を増加 */
    font-size: 1.5em; /* フォントサイズを大きく */
    width: 300px; /* 横幅も少し広げる */
}
footer input[type="submit"], footer .footer-buttons input[type="submit"] {
        padding: 40px 80px; /* ボタンの縦横の余白を増加 */
        font-size: 2em; /* フォントサイズを大きく */
        width: 300px; /* 横幅も少し広げる */
    }

    footer .footer-buttons .row-center {
        display: flex;
        justify-content: center;
        gap: 20px; /* ボタン間の水平スペースを設定 */
        width: 100%;
    }

    footer .footer-buttons .row {
        display: flex;
        justify-content: center;
        gap: 20px; /* ボタン間の水平スペースを設定 */
    }
<!-------------------------------------------------------------------------->
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

body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        header {
            /* ヘッダーのスタイルを追加する場合はここに */
        }

        footer {
            margin-top: auto;
            background-color: #78e3fb;
            text-align: center;
            padding: 10px;
        }

        .sidebar {
            text-align: center;
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
            height: 300px;
        }

        footer form {
            display: inline-block;
            margin: 0 10px;
        }

        footer input[type="submit"] {
            padding: 10px 60px;
            font-size: 1.2em;
            border: none;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            cursor: pointer;
            width: 250px;
        }

        footer input[type="submit"]:hover {
            background-color: #ff4500;
        }

        /* BGMの文字を大きくして中央に配置 */
        .bgm-text {
            font-size: 3em;
            font-weight: bold;
            text-align: center;
            margin-top: 30px;
            color: black;
        }

        .logout-button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .logout-button-container form input[type="submit"] {
            padding: 10px 40px;
            font-size: 1.2em;
            border-radius: 8px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
            width: 250px;
        }

        .logout-button-container form input[type="submit"]:hover {
            background-color: #ff4500;
        }

        /* 魚カードのスタイル */
        .fish-card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
            margin: 20px;
        }

        .fish-card {
            width: 250px;
            height: 350px;
            border: 1px solid #ccc;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            text-align: center;
            padding: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .fish-card img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .fish-card h3 {
            font-size: 1.2em;
            margin-top: 15px;
            color: #333;
        }

        .fish-card p {
            font-size: 0.9em;
            color: #666;
            margin-top: 10px;
        }

        .fish-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }

        .qr-code-button:hover {
            background-color: #ff4500;
        }

        /* フッターのボタン配置調整 */
        footer .footer-buttons {
            display: flex;
            flex-direction: column;
            gap: 20px; /* ボタン間の垂直スペースを設定 */
        }

        footer .footer-buttons .row {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
        }

        /* 新しく追加した中央寄せのスタイル */
        .footer-buttons .row-center {
            display: flex;
            justify-content: center;
            gap: 20px; /* ボタン間の水平スペースを設定 */
            width: 100%;
        }
        /* 戻るボタンを左に寄せる */
        .button-container {
            display: flex;
            justify-content: flex-start; /* ボタンを左に寄せる */
            gap: 20px; /* ボタン間の隙間 */
            margin-top: 20px; /* 上部に余白 */
        }

        .button-container button, .button-container input[type="submit"] {
            padding: 20px 60px; /* ボタンの縦横の余白を増加 */
            font-size: 2em; /* フォントサイズを大きく */
            border-radius: 8px; /* ボタンの角を丸く */
            background-color: #ff6347; /* ボタンの背景色 */
            color: white; /* 文字色 */
            border: none; /* ボーダーを消す */
            cursor: pointer; /* マウスオーバー時にポインターを表示 */
            width: 300px; /* 横幅を広げる */
        }

        .button-container button:hover, .button-container input[type="submit"]:hover {
            background-color: #ff4500; /* ホバー時の背景色 */
        }

<!-------------------------------------------------------------------------->
.notification-item p {
    font-size: 2em;  /* フォントサイズを大きく */
    margin-bottom: 20px; /* 各項目の間隔を広げる */
}

.content input, .content textarea {
    font-size: 2em;  /* フォントサイズを大きく */
    height: 200px;  /* 日付入力欄の高さを大きく */
    width: 950px;   /* パディングを広げて入力領域を大きく */
}

.content textarea {
   height: 300px;  /* 日付入力欄の高さを大きく */
    width: 950px;
}

.content input[type="date"] {
    height: 200px;  /* 日付入力欄の高さを大きく */
    width: 950px;
	font-size: 3em;
}

    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
    	<!-- 戻るボタン -->
        <div class="button-container">
            <form action="../manager/Notification_data_customer.action" method="post">
                <input type="submit" value="戻る">
            </form>
        </div>

        <div class="notification-list">
    <c:forEach var="listTitle1" items="${listTitle}">
        <div class="notification-item">
            <p><strong>タイトル:</strong> ${listTitle1.nt}</p>
            <p><strong>文章:</strong> ${listTitle1.nc}</p>
            <p><strong>日付:</strong> ${listTitle1.nd}</p>
        </div>
    </c:forEach>
</div>

<div class="content">
    <input type="text" id="title" name="f1" placeholder="タイトルを入力してください" value="${nAll.nt}" readonly>
    <textarea id="content" name="f2" placeholder="ここに文章を入力してください" readonly>${nAll.nc}</textarea>
    <input type="date" id="date" name="f3" value="${nAll.nd}" readonly>
</div>

    </div>

    <footer>
        <div class="footer-buttons">
            <!-- ホーム、マップボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/FishCardList.action" method="post">
                    <input type="submit" value="ホーム">
                </form>
                <form action="../manager/MapView.action" method="post">
                    <input type="submit" value="マップ">
                </form>
            </div>

            <!-- お知らせ、設定ボタンを中央に配置 -->
            <div class="row-center">
                <form action="../manager/Notification_data_customer.action" method="post">
                    <input type="submit" value="お知らせ">
                </form>
                <form action="../manager/Setting_C.action" method="post">
                    <input type="submit" value="設定">
                </form>
            </div>
        </div>
    </footer>
</body>
</html>