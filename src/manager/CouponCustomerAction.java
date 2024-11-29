
package manager;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CouponDAO;
import bean.Coupon;
import tool.Action;


public class CouponCustomerAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		try {

            CouponDAO cDAO = new CouponDAO();

            List<Coupon> listTitle = cDAO.searchTitle();
            List<Coupon> listId = cDAO.searchId();


            // 取得したデータをリクエスト属性にセット

            request.setAttribute("listTitle", listTitle);
            request.setAttribute("listId", listId);


		request.getRequestDispatcher("../customer/coupon_C/coupon_C.jsp").forward(request, response);

		} catch (Exception e) {

	        throw new ServletException(e);

		}
//			req.getRequestDispatcher("../staff/notification_data/notification_data_edit.jsp").forward(request, response);

	    }

	}



		//login
