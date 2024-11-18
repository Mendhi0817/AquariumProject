import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CouponDAO;

@WebServlet("/UploadCouponServlet")
public class CouponDB extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String couponTitle = request.getParameter("couponTitle");
        String couponContent = request.getParameter("textInput");

        CouponDAO dao = new CouponDAO();
        try {
            dao.saveCoupon(couponTitle, couponContent);
            response.getWriter().println("クーポンが正常に保存されました。");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "データベースエラー: " + e.getMessage());
        }
    }
}
