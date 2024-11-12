<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>右寄せ画像表示</title>
<style>

        .picture {
        	background-attachment: fixed;
            display: flex; /* フレックスボックスを使用 */
            justify-content: flex-end; /* 右寄せ */
            margin: 10px; /* 上下マージン */
        }
        .picture img {
        background-attachment: fixed;
            width: 10%; /* 幅を50%に設定 */
            margin: 10px 0;
        }
        body {
        background-image:url("../picture/right_photo.png");
        background-repeat:no-repeat;
        background-size:100px auto;

        background-attachment: fixed;
        display: flex; /* フレックスボックスを使用 */
        justify-content: flex-end; /* 右寄せ */
        background-position: right;
		left:100em;
        margin: 10px 0;
        background-attachment: fixed;}
</style>
</head>
<body>

</body>
</html>