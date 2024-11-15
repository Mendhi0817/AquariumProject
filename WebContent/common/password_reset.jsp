<%-- ログインJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
    <c:param name = "title">水族舘プロジェクト</c:param>
</head>



<form action="../manager/PasswordReset.action" method="post">
<p>登録しているメールアドレスを入力して下さい。</p>
<p><input type="text" name="email" placeholder="メールアドレス"></p>
<p><input type = "submit" value = "確認"></p>


</form>


</body>