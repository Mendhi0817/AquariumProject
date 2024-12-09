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
<c:import url="/common/base.jsp">

</c:import>

<form action ="../manager/FishCardList.action" method = "post"><input type = "submit" value = "【戻る】"></form>

<div>

                <textarea id="content" name="f1"placeholder="ここにカード名を入力してください"></textarea>
                </div>


    <!-- PDFファイルをアップロードするフィールド -->
                <div>
                    <label for="pdfUpload">画像をアップロードして下さい：</label>
                    <input type="file" id="pdfUpload" name="f3" accept="application/pdf">
                </div>

                <div>
                <h2>説明文を入力</h2>
                <textarea id="content" name="f4" placeholder="ここに文章を入力してください"></textarea>
                </div>

                <!-- 送信ボタン -->
                <div>
                    <form action ="../manager/FishCardEditDone.action" method = "post"><input type = "submit" value = "編集"></form>
                </div>