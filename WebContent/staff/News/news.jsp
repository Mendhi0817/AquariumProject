<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ja">
<head>
    <link rel="stylesheet" href="..//News/news.css">
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
    <aside class="sidebar"><img src="../../picture/right_photo.png" alt="サイドバー画像"align="right"></aside>
    <header><img src="../../picture/suizokutachiproject_titlelogo.png" width="400" height="150"></header>

		<form action ="../manager/News_delete.action" method = "post"><input type = "submit" value = "削除"></form>
		<form action ="../manager/News_edit.action" method = "post"><input type = "submit" value = "編集"></form>


    <div class="content">
        <h2>タイトルを入力</h2>
        <input type="text" id="title" placeholder="タイトルを入力してください">

        <h2>文章を入力</h2>
        <textarea id="content" placeholder="ここに文章を入力してください"></textarea>
    </div>

    <button name="button2">投稿</button>

</div>
    <footer>
        <form action ="../manager/Home_staff.action" method = "post"><input type = "submit" value = "ホーム"></form>
        <form action ="../manager/Setting.action" method = "post"><input type = "submit" value = "設定"></form>
    </footer>
</body>

