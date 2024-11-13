<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<head>
    <link rel="stylesheet" href="マップ投稿.css">
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

        /* 新しく追加したフォーム要素のスタイル */
        .form-container {
            margin: 20px;
            text-align: center;
        }

        .form-container input {
            margin: 10px 0;
            padding: 10px;
            width: 200px;
            font-size: 16px;
        }

        .form-container button {
            width: 150px;
            height: 50px;
            font-size: 16px;
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

        <!-- 新しいフォームセクション -->
        <div class="form-container">
            <form>
                <div>
                    <button name="delete">削除</button>
                </div>
                <!-- 文字を入力するフィールド -->
                <div>
                    <label for="textInput">階数を入力：</label>
                    <input type="text" id="textInput" name="textInput" placeholder="階数を入力してください">
                </div>

                <!-- PDFファイルをアップロードするフィールド -->
                <div>
                    <label for="pdfUpload">マップの写真をアップロードして下さい：</label>
                    <input type="file" id="pdfUpload" name="pdfUpload" accept="application/pdf">
                </div>

                <!-- 送信ボタン -->
                <div>
                    <button type="submit">投稿</button>
                </div>
            </form>
        </div>
    </div>

<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="/common/base.jsp">

</c:import>