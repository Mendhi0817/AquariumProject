<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<head>
    <link rel="stylesheet" href="マップ投稿.css">
    <title>水族舘プロジェクト</title>
    <c:import url="/common/base.jsp">

</c:import>
    <style>
    	.notification-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc; /* 枠線を追加 */
            border-radius: 8px; /* 角を丸く */
            max-width: 600px;
        }

        .notification-item button {
            padding: 5px 20px;
            font-size: 1em;
            border-radius: 5px;
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
        }

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

        .position {
        position:absolute;
        top:150px;}
    </style>
</head>

<body>
<div class="position">
<h1>階数</h1>
	<table border=1">
		<tr>
			<th>Floor Info</th>
			<th>Action</th>
		</tr>

	<c:forEach var="map" items="${listmap}">
            <tr>
                <td>${map.floorInfo}</td>
                <td><form action ="../manager/MapDeleteDone.action" method = "post">
                <input type = "submit" value = "削除">
                </form>
               </td>
            </tr>
        </c:forEach>
    </table>

        </body>