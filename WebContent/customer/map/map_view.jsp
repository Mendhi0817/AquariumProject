<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<head>
    <link rel="stylesheet" href="マップ投稿.css">
    <title>水族舘プロジェクト</title>
    <c:import url="/common/base.jsp">
    </c:import>
<body>
    <h2>Map List</h2>
    <div class="right-panel">
            <img src="file:///C:/Users/the/git/AquariumProject_1121/WebContent/picture/map%20(1).jpg" alt="魚の写真">
        </div>

    <table border="1">
        <tr>
            <th>Floor Info</th>
        </tr>

<!-- floorInfoListからmapで取り出す -->
        <c:forEach var="map" items="${floorInfoList}">
            <tr>
                <td><a href="MapView.action?floor_info=${map}">${map}</a></td>
            </tr>
        </c:forEach>
    </table>
    <br><a href="${mapImage}"></a>
    <iframe src="C:\FloorMap\maptest_sunshine.pdf" width="600" height="332"></iframe>
	<embed src="C:/FloorMap/${mapImage}" type="application/pdf">
	<object type="application/pdf" data="${mapImage}" width="250" height="200"></object>
</body>
</html>