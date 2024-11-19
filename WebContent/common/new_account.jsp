<%-- ログインJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
    <c:param name = "title">水族舘プロジェクト</c:param>
</head>
<h1>新規登録!!</h1>


<form action="../manager/PasswordReset.action" method="post">
<p>ユーザー名、メールアドレス、パスワードを入力して下さい。</p>

<p><input type="text" name="user_name" placeholder="ユーザー名"></p>

<p><input type="text" name="email" placeholder="メールアドレス"></p>

<p><input type="text" name="password" placeholder="新しいパスワード"></p>
<p><input type = "submit" value = "新規登録"></p>


</form>


</body>