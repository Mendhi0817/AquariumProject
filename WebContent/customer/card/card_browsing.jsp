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
<c:import url="/common/base.jsp">
</c:import>
	<body>
    <header>
        <h1>魚の写真</h1>
    </header>
        <div class="sidebar">
                <form action ="../../manager/HomeCoust.action" method = "post"><input type = "submit" value = "戻る">
            </form>
        </div>
        <div class="content">
            <div class= "fish-photo">
                <!-- listTitle からお知らせタイトルをループで表示 -->
                <c:forEach var="listTitle1" items="${FishCardList}">
                    <div class="fishcard-item">
                        <!-- お知らせタイトルを表示 -->

                        <span>${listTitle1.cardTitle}</span><br>
                        <img src="viewImage?imagePath=${listTitle1.cardImage}" width="250" height="200">
                   		<span>${listTitle1.cardText}</span>
                    </div>
                </c:forEach>

            </div>
            <div class="qr-code">
                <!-- QRコード読み取りボタン -->
        <form action="../manager/Camera.action" method="post">
            <input type="submit" value="QRコード" class="qr-code-button">
        </form>
            </div>
        </div>
    </main>
</body>
<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
</footer>
</html>