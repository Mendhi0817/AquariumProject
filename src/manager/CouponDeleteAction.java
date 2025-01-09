package manager;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CouponDAO;
import bean.Coupon;
import tool.Action;
public class CouponDeleteAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		try {

            CouponDAO cDAO = new CouponDAO();

            List<Coupon> listTitle = cDAO.searchTitle();



            // 取得したデータをリクエスト属性にセット

            request.setAttribute("listTitle", listTitle);


		request.getRequestDispatcher("../staff/Coupon/coupon_delete.jsp").forward(request, response);
        } catch (Exception e) {

            throw new ServletException(e);

        }
	}
}
