<%-- ログインJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
    <c:param name = "title">水族舘プロジェクト</c:param>
</head>



<form action="../manager/NewAccount.action" method="post">
<p>新規作成したいユーザー名、メールアドレス、パスワードを入力して下さい。</p>
<p><input type="text" name = "username" placeholder="ユーザー名"></p>
<p><input type="text" name="email" placeholder="メールアドレス"></p>

<p><input type="text" name="password" placeholder="パスワード"></p>
<p><input type = "submit" value = "新規作成"></p>


</form>


</body>