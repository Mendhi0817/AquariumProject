<!-- ------------------------------------------------- -->
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

 /* ホームと設定ボタンを大きくするためのスタイル */
    footer form input[type="submit"] {
        width: 300px; /* ボタンの横幅を大きく設定 */
        padding: 60px 60px; /* ボタンのパディングを大きく設定 */
        font-size: 1.5em; /* フォントサイズを大きく設定 */
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

    /* ホームと設定ボタンを大きくするためのスタイル */
    footer form input[type="submit"] {
        width: 300px; /* ボタンの横幅を大きく設定 */
        padding: 60px 60px; /* ボタンのパディングを大きく設定 */
        font-size: 2em; /* フォントサイズを大きく設定（文字も大きく） */
    }

    /* すべてのsubmitボタンに対して共通のスタイルを適用 */
    input[type="submit"] {
        padding: 30px 60px; /* ボタンのパディング */
        font-size: 2.0em;
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

    /* フォームのラベル */
label {
    font-size: 3.0em; /* フォントサイズを大きく */
    margin-bottom: 10px; /* ラベルとフィールドの間に余白 */
    display: block; /* ラベルをブロック要素として表示 */
}

/* テキスト入力フィールド */
input[type="text"], input[type="file"] {
    width: 100%; /* 入力フィールドの幅を広げる */
    padding: 15px; /* パディングを増やしてボックスを大きく */
    font-size: 1.5em; /* フォントサイズを大きく */
    margin-bottom: 20px; /* フィールドとフィールドの間に余白 */
    border-radius: 8px; /* 角を丸く */
    border: 1px solid #ccc; /* 境界線を設定 */
}

/* 投稿ボタン */
.button-container input[type="submit"] {
    width: 100%; /* ボタンの幅を広げる */
    padding: 20px; /* ボタンのパディングを増やす */
    font-size: 2.5em; /* ボタンのフォントサイズを大きく */
    border-radius: 8px; /* 角を丸く */
    background-color: #ff6347; /* ボタンの背景色 */
    color: white; /* ボタンの文字色 */
    cursor: pointer; /* カーソルをポインターに */
    border: none; /* 枠線なし */
    margin-top: 10px; /* ボタンとフォームの間に余白 */
}

/* ホバー時の背景色変更 */
.button-container input[type="submit"]:hover {
    background-color: #ff4500; /* ホバー時の色 */
}

    </style>
</head>

<body>
    <div class="container">
        <header><img src="../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>
<div class="position">
            <div class="form-container">
                <!-- 削除ボタン -->

                <!-- 文字を入力するフィールド -->
                <form action ="../manager/MapPostDone.action" method = "post" enctype="multipart/form-data">
                    <div>
                        <label for="textInput">階数を入力</label>
                        <input type="text" id="textInput" name="textInput" placeholder="階数を入力してください">
                    </div>

                    <!-- PDFファイルをアップロードするフィールド -->
                    <div>
                        <label for="pdfUpload">マップの写真をアップロードして下さい</label>
                        <input type="file" id="pdfUpload" name="pdfUpload" accept="application/jpg">
                    </div>

                    <!-- 投稿ボタン -->
                    <div class="button-container">
                        <input type="submit" value="投稿">


                    </div>
                </form>

                <form action="MapDelete.action" method="post">
    <div class="button-container">
        <!-- 削除ボタンを入力ボタンに変更 -->
        <input type="submit" name="delete" value="投稿したマップの削除">
    </div>
</form>
            </div>
        </div>
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