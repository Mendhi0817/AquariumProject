<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ロゴ画像表示</title>
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
	header{
	background-image:url("../picture/logo.jpg");
	background-position: left;
	background-repeat: no-repeat;
	background-size: 150px 150px;
    margin: 10px 0;
    background-attachment: fixed;}

	}


}
 .picture{
 background-position:left;
 }
	.picture img{
		width: 100%;
		margin:10px 0;
	}
</style>
<header>
</header>
</html>