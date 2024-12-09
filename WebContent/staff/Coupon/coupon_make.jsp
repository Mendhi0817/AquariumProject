<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<title>水族館プロジェクト</title>
<head>
    <style>
        .button-container {
            text-align: center;
            margin: 20px 0;
        }
    </style>
</head>
<body>

<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="/common/base.jsp"></c:import>

    <div class="form-container">
        <form action="UploadCouponServlet" method="post" enctype="multipart/form-data"> <!-- enctypeを追加 -->

            <label for="textInput">クーポン内容:</label>
            <div>
                <input type="text" id="textInput" name="textInput" required>
            </div>

            <label for="pdfUpload">クーポンの写真をアップロードして下さい：</label>
            <div>
                <input type="file" id="pdfUpload" name="pdfUpload" accept="image/*" required> <!-- PDFから画像に変更可能 -->
            </div>

            <div class="button-container">
                <button type="submit">投稿</button>
            </div>
        </form>
    </div>
</footer>
</body>
</html>
