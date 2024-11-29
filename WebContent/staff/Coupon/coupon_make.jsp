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


            <h2>タイトルを入力</h2>
                <input type="text" id="title" name="f1" placeholder="タイトルを入力してください">

             <h2>文章を入力</h2>
             <textarea id="content" name="f2" placeholder="ここに文章を入力してください"></textarea>


           <div>
                <input type="submit" value="投稿">
           </div>
        </form>
    </div>
</footer>
</body>
</html>
