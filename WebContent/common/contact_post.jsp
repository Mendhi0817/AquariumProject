<%-- メニューJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
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
    <aside class="sidebar"><img src="fish_right_new.png" alt="サイドバー画像"align="right"></aside>
    <header><img src="水族舘プロジェクト_タイトル.png" width="400" height="150"></header>

    <div class="content">
        <h2>タイトルを入力</h2>
        <input type="text" id="title" placeholder="タイトルを入力してください">

        <h2>文章を入力</h2>
        <textarea id="content" placeholder="ここに文章を入力してください"></textarea>
    </div>

    <button name="button2">投稿</button>

</div>
