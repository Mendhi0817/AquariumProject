<%-- メニューJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<head>
<style>
.button-container {
		text-align:center;
		margin:20px 0;}
</style>
</head>

<body>
<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
</footer>
<c:import url="/common/base.jsp">
</c:import>
	<body>
    <header>
        <h1>魚の写真</h1>
    </header>
    <main>
        <div class="sidebar">
                <form action ="../../manager/HomeCoust.action" method = "post"><input type = "submit" value = "戻る">
            </form>
        </div>
        <div class="content">
            <div class= "fish-photo">
                <img src="path/to/fish.jpg" alt="魚の写真" />
            </div>
            <div class="qr-code">
                <h2>QRコード</h2>
            </div>
        </div>
    </main>

    </footer>
</body>

</html>