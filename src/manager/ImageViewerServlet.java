package manager;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/manager/viewImage" })
public class ImageViewerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // クライアントから送信された画像パスを取得
        String imagePath = request.getParameter("imagePath");
        File imageFile = new File(imagePath);
        System.out.println(imagePath);

        if (imageFile.exists()) {
        	System.out.println("bbb");
            // JPEG画像であることをレスポンスのコンテンツタイプに設定
            response.setContentType("image/jpeg");

            // ファイルをストリーム経由でクライアントに送信
            try (FileInputStream fis = new FileInputStream(imageFile);
                 ServletOutputStream outputStream = response.getOutputStream()) {

                byte[] buffer = new byte[4096];
                int bytesRead;
                while ((bytesRead = fis.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
            }
        } else {
            // ファイルが見つからない場合、404エラーを返す
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "JPEGファイルが見つかりません");
        }
    }
}
