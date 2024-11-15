import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadCouponServlet")
@MultipartConfig
public class Coupon extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC接続情報
    private static final String JDBC_URL = "jdbc:h2:tcp://localhost/~/aquarium";
    private static final String JDBC_USER = "sa";
    private static final String JDBC_PASSWORD = "47554755aDid";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String couponContent = request.getParameter("textInput");

        // アップロードされたファイルを取得
        Part filePart = request.getPart("pdfUpload");
        String fileName = filePart.getSubmittedFileName(); // ファイル名を取得
        String filePath = "path/to/save/directory/" + fileName; // 保存先パスを指定

        // ファイルをサーバーに保存
        File uploadFile = new File(filePath);
        Files.copy(filePart.getInputStream(), uploadFile.toPath(), StandardCopyOption.REPLACE_EXISTING);

        try {
            Class.forName("org.h2.Driver");
            try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
                String sql = "INSERT INTO coupon (coupon_content, coupon_title) VALUES (?, ?)";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, couponContent);
                    statement.setString(2, fileName); // この場合、ファイル名をタイトルとして使用
                    statement.executeUpdate();
                }
            }
            response.getWriter().println("クーポンが正常に保存されました。");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "データベースエラー: " + e.getMessage());
        }
    }
}
