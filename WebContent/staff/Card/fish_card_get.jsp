<%@ page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>魚カードゲット</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }

        .card-container {
            text-align: center;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            transition: transform 0.3s ease;
        }

        .card-container:hover {
            transform: scale(1.05);
        }

        .card-image {
            width: 100%;
            border-radius: 10px;
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            margin-top: 15px;
            color: #006994;
        }

        .card-description {
            font-size: 16px;
            margin-top: 10px;
            color: #555;
        }

        .message {
            font-size: 18px;
            font-weight: bold;
            color: #28a745;
            margin-top: 20px;
        }

        /* アニメーション効果 */
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .card-container.bounce {
            animation: bounce 1s ease infinite;
        }

    </style>
</head>
<body>

<%-- 魚カードがゲットされたことを表示 --%>
<%
    String fishName = "金魚";
    String fishImageUrl = "https://example.com/images/goldfish.jpg";  // 実際の画像URLに置き換えてください
%>
<div class="card-container bounce">
    <img src="<%= fishImageUrl %>" alt="<%= fishName %>" class="card-image">
    <div class="card-title">${fishcard.cardTitle}</div>
    <div class="card-description">素晴らしい魚がゲットできました！</div>
    <div class="message">おめでとうございます！</div>

                    <form action="../manager/Home_customer.action" method="post">
                    <input type="submit" value="ホーム">
                </form>
</div>



</body>
</html>
