<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>エラー画面</title>
  <link rel="stylesheet" href="error.css">
</head>
<body>
  <div class="error-container">
    <h1 class="error-message">エラーが発生しました</h1>

    <form action ="../../manager/Home_staff.action "post"><input type = "submit" value = "戻る"></form>
  </div>
</body>
