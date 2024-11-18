<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
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
                <form>
<label for="raritySelect">レア度を選んでください:</label>
					<select class="form-select" required aria-label="select example" id="rarity" name="f1" style="width: 30%;">

        <option value="normal">ノーマル</option>
        <option value="rare">レア</option>
        <option value="super_rare">スーパーレア</option>
        <option value="hyper_rare">ハイパーレア</option>
    </select>
    </form>

                <!-- PDFファイルをアップロードするフィールド -->
                <div>
                    <label for="pdfUpload">画像をアップロードして下さい：</label>
                    <input type="file" id="pdfUpload" name="f2" accept="application/pdf">
                </div>

                <div>
                <h2>説明文を入力</h2>
                <textarea id="content" placeholder="ここに文章を入力してください"></textarea>
                </div>

                <!-- 送信ボタン -->
                <div>
                    <form action ="../manager/FishCardMakeDone.action" method = "post"><input type = "submit" value = "投稿"></form>
                </div>
            </form>
        </div>
    </div>
</body>
</html>