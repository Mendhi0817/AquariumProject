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

<body>
    <div class="container">
        <aside class="sidebar">
            <img src="../img/水族舘プロジェクト_右の写真2.png" alt="サイドバー画像" align="right">
        </aside>

        <header>
            <img src="../img/水族舘プロジェクト_タイトル.png" width="400" height="150">
        </header>

        <!-- 新しいフォームセクション -->
        <div class="form-container">
            <form>
                <!-- 文字を入力するフィールド -->
                <form>
                  <label for="rarity">レア度を選んでください:</label>
                  <select id="rarity" name="rarity">
                    <option value="normal">ノーマル</option>
                    <option value="rare">レア</option>
                    <option value="super_rare">スーパーレア</option>
                    <option value="hyper_rare">ハイパーレア</option>
                  </select>
                </form>

                <!-- PDFファイルをアップロードするフィールド -->
                <div>
                    <label for="pdfUpload">画像をアップロードして下さい：</label>
                    <input type="file" id="pdfUpload" name="pdfUpload" accept="application/pdf">
                </div>

                <div>
                <h2>説明文を入力</h2>
                <textarea id="content" placeholder="ここに文章を入力してください"></textarea>
                </div>

                <!-- 送信ボタン -->
                <div>
                    <button type="submit">投稿</button>
                </div>
            </form>
        </div>
    </div>

    <footer>
        <button name="button2" onclick="location.href='../home/home J.html'">ホーム</button>
        <button name="button2" onclick="location.href='../setting/setting staff.html'">設定</button>
    </footer>
</body>
</html>