<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<title>水族館プロジェクト</title>
<head>
    <style>
        .button-container {
            text-align: center;
            margin: 20px 0;
        }
        .body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        .container {
            width: 90%;
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .button-container {
            text-align: center;
            margin: 20px 0;
        }
        .footer {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>

<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="/common/base.jsp"></c:import>
</footer>
<body>
<div class="container">


    <h2>削除したいクーポンを選んで下さい</h2>

    <form action="DeleteCouponServlet" method="post">

        <div class="Ybutton-container">
            <button type="submit">削除</button>
        </div>
    </form>

    <div class="footer">
    <form action ="../../manager/Coupon.action" method = "post"><input type = "submit" value = "クーポン">
    </div>
</div>

</body>
</html>
