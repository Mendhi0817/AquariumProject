// データベース設定
private static final String JDBC_URL = "jdbc:mysql://localhost:3306/データベース名";
private static final String DB_USER = "ユーザー名";
private static final String DB_PASSWORD = "パスワード";



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DisplayData")
public class DisplayDataServlet extends HttpServlet {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/データベース名";
    private static final String DB_USER = "ユーザー名";
    private static final String DB_PASSWORD = "パスワード";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            out.println("<html><head><title>データ表示</title></head><body>");
            out.println("<h1>データベースから取得した情報</h1>");

            // データベース接続
            try (Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD)) {

                // SQLクエリを用意
                String query = "SELECT * FROM テーブル名";

                // PreparedStatementを作成
                try (PreparedStatement statement = connection.prepareStatement(query)) {
                    // SQLクエリを実行
                    ResultSet resultSet = statement.executeQuery();

                    // データを表示
                    while (resultSet.next()) {
                        String column1 = resultSet.getString("カラム1");
                        String column2 = resultSet.getString("カラム2");
                        out.println("<p>" + column1 + " - " + column2 + "</p>");
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace(out);
                out.println("<p>データベースエラーが発生しました。</p>");
            }

            out.println("</body></html>");
        }
    }
}

