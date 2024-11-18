<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<c:import url="/common/base.jsp">

</c:import>

    <div>
        <button name="log out">ログアウト</button>
    </div>

    <div>
        BGM
    </div>

    <div class="button-container">
        <button name="ON">ON</button>
        <button name="OFF">OFF</button>
    </div>

    <div>
        <button name="user information change" onclick="location.href='../setting_C/change user information_C.html'">ユーザー情報変更</button>
    </div>

    <div>
        <button name="password" onclick="location.href='../setting_C/password_reset.html'">パスワードリセット</button>
    </div>

