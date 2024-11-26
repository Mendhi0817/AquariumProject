<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<c:import url="/common/base.jsp">

</c:import>



<head>
<style>
.button-container {
		text-align:center;
		margin:20px 0;}
</style>
</head>

<body>



        <!-- 新しいフォームセクション -->
        <div class="form-container">
            <form>
                <!-- 文字を入力するフィールド -->

                <div>
                <h2></h2>
                <textarea id="f1" name="f1"placeholder="ここにカード名を入力してください"></textarea>
                </div>



    </form>

                <!-- PDFファイルをアップロードするフィールド -->
                <div>
                    <label for="pdfUpload">画像をアップロードして下さい：</label>
                    <input type="file" id="pdfUpload" name="pdfUpload" accept="application/pdf">
                </div>

                <div>
                <h2>説明文を入力</h2>
                <textarea id="f2" name="f2" placeholder="ここに文章を入力してください"></textarea>
                </div>

                <!-- 送信ボタン -->
                <div>
                    <form action ="../manager/FishCardMakeDone.action" method = "post"><input type = "submit" value = "投稿"></form>
                </div>

        </div>
</body>
<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom"></footer>
</html>