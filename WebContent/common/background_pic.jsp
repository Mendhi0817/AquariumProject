<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>右寄せ画像表示</title>
<style>
        body {
            text-align: center;
        }
        .picture {
            display: flex; /* フレックスボックスを使用 */
            justify-content: flex-end; /* 右寄せ */
            margin: 10px; /* 上下マージン */
        }
        .picture img {
            width: 50%; /* 幅を50%に設定 */
            margin: 10px 0;
        }
</style>
</head>
<body>
<div class="picture">
<img src="<%= request.getContextPath() %>/picture/right_photo.png" alt="画像"/>
</div>
</body>
</html>