<%-- ログインJSP --%>
<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <link rel="stylesheet" href="C:\Users\a\Desktop\水族舘プロジェクト\水族舘プロジェクト1.css">
    <title>水族舘プロジェクト</title>
</head>

<style>

header {
            /* ヘッダーのスタイルを追加する場合はここに */
}
footer {
            margin-top: auto; /* フッターを画面の下に固定 */
            background-color: #78e3fb; /* 背景色を設定（任意） */
            text-align: center; /* 中央揃え（任意） */
            padding: 10px; /* 内側の余白（任意） */
}

input {
	position: relative;
	top:10em;
	width: 70%;
	box-sizing: border-box;
	margin: 1em 0;
	padding: .8em;
	border-radius: 2em;
	border: 2px solid #aaa;
}
.buttons1 {
	text-align: center;
	padding:20px 40px;
	position: relative;
	top:15em;
	display: grid;
	justify-items: center;
	align-content: center;
}
.buttons2 {
	position: relative;
	top:20em;}
</style>
<center>
<body>
<form action="#" method="post">
	<input type="text" name="mailAddress" placeholder="メールアドレス">
	<input type="text" name="password" placeholder="パスワード">
</form>
<div class=buttons1>
	<button name="Enter">Enter</button>
	<br>
	<button name="ResettingPassword">パスワードを忘れた</button>
	<br>
</div>
</center>
<div class="buttons2">
	<button name="Return">戻る</button>
</div>
</body>