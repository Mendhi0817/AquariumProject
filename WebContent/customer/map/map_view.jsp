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

    <table border="1">
        <tr>
            <th>Floor Info</th>
            <th>Action</th>
        </tr>

<!-- floorInfoListからmapで取り出す -->
        <c:forEach var="map" items="${floorInfoList}">
            <tr>
                <td><a href="MapView.action?floor_info=${map}">${map}</a></td>
            </tr>
        </c:forEach>
    </table>
    <embed src="viewPDF?pdfPath=${mapImage}" type="application/pdf" width="250" height="200">
</body>
</html>