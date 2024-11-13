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


        <!-- 新しいフォームセクション -->
        <div class="form-container">
            <form>

                クーポン内容

                <!-- 文字を入力するフィールド -->
                <div>

                    <input type="text" id="textInput" name="textInput">
                </div>

                <!-- PDFファイルをアップロードするフィールド -->
                <div>
                    <label for="pdfUpload">クーポンの写真をアップロードして下さい：</label>
                    <input type="file" id="pdfUpload" name="pdfUpload" accept="application/pdf">
                </div>

                <!-- 送信ボタン -->
                <div>
                    <button type="submit">投稿</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>