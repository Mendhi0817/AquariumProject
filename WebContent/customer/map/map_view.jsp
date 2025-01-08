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

        /* Canvasのサイズを固定 */
        #pdfCanvas {
            width: 600px;  /* 固定幅 */
            height: 800px; /* 固定高さ */
            margin-left: 40px; /* 左側に20pxのスペースを追加 */
			margin-top: 40px;  /* 上に20pxのスペースを追加 */

        }

        /* マップ一覧のスタイル */
.map-list {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); /* 自動でカラム数を調整 */
    gap: 20px;
    margin-top: 20px;
}

.map-item {
    text-align: center;
}

.map-button {
    display: block;
    padding: 15px;
    background-color: #ff6347; /* 明るい水色 */
    color: black;
    font-size: 1.2em;
    text-decoration: none;
    border: 1px solid #ccc;
    border-radius: 8px;
    transition: background-color 0.3s, transform 0.3s;
}

.map-button:hover {
    background-color: #ff6347; /* ホバー時に色を変える */
    transform: scale(1.05); /* 少し拡大させて目立たせる */
}

.map-button {
    display: white;
    padding: 10px;  /* ボタンのパディングを小さく */
    background-color: #ff6347; /* 明るい水色 */
    color: black;
    font-size: 1em; /* フォントサイズを小さく */
    text-decoration: none;
    border: 1px solid #ccc;
    border-radius: 8px;
    transition: background-color 0.3s, transform 0.3s;
}

.map-button:hover {
    background-color: #ff6347; /* ホバー時に色を変える */
    transform: scale(1.05); /* 少し拡大させて目立たせる */
}

.map-button {
    display: white;
    padding: 10px;  /* ボタンのパディングを小さく */
    background-color: ff6347; /* 明るい水色 */
    color: white;
    font-size: 1em; /* フォントサイズを小さく */
    text-decoration: none;
    border: 1px solid #ccc;
    border-radius: 8px;
    transition: background-color 0.3s, transform 0.3s;
    width: 180px; /* 横幅を指定、例えば180pxに変更 */
    margin: 0 auto; /* 中央寄せ */
}

.map-button:hover {
    background-color: #ff4500; /* ホバー時に色を変える */
    transform: scale(1.05); /* 少し拡大させて目立たせる */
}


    </style>
</head>

<body>
    <div class="container">
        <aside class="sidebar"><img src="../picture/fish_right_new.png" alt="サイドバー画像" align="right"></aside>
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

		<h2 style="text-align: center;">マップ一覧</h2>


<div class="map-list">
    <!-- floorInfoListからmapで取り出す -->
    <c:forEach var="map" items="${floorInfoList}">
        <div class="map-item">
            <a href="MapView.action?floor_info=${map}" class="map-button">${map}</a>
        </div>
    </c:forEach>
</div>
        <table border="1">


            <!-- floorInfoListからmapで取り出す -->
            <c:forEach var="map" items="${floorInfoList}">

            </c:forEach>
        </table>

        <!-- PDF.jsを使うための必要なスクリプトを追加 -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf.min.js"></script>

        <canvas id="pdfCanvas"></canvas>

        <script>
          var url = 'viewPDF?pdfPath=${mapImage}';

          // PDF.jsを使ってPDFを読み込む
          pdfjsLib.getDocument(url).promise.then(function(pdf) {
            pdf.getPage(1).then(function(page) {
              var canvas = document.getElementById('pdfCanvas');
              var context = canvas.getContext('2d');

              // 固定サイズのキャンバスに合わせてスケーリング
              var scale = Math.min(canvas.width / page.getViewport({ scale: 1 }).width, canvas.height / page.getViewport({ scale: 1 }).height);

              var viewport = page.getViewport({ scale: scale });

              canvas.height = viewport.height;
              canvas.width = viewport.width;

              page.render({
                canvasContext: context,
                viewport: viewport
              });
            });
          });
        </script>

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


