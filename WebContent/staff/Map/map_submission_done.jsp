<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<style>
	.position {
        position:absolute;
        top:150px;}
</style>
<header>
<c:import url="/common/base.jsp">
</c:import>
</header>
<body><div class="position">
投稿しました


            <form action="../manager/MapPost.action" method="post">
                <input type="submit" value="戻る" class="back-button">
            </form>
        </div>

       </body></body>