package manager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CouponDAO;
import bean.Coupon;
import tool.Action;


public class CouponCustomerDetailAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		try {

            CouponDAO cDAO = new CouponDAO();

            String ci = request.getParameter("ci");
            Coupon cAll = cDAO.get(ci);




            // 取得したデータをリクエスト属性にセット

            request.setAttribute("cAll", cAll);
            request.setAttribute("ci", ci);



		request.getRequestDispatcher("../staff/notification_data/notification_data_c.jsp").forward(request, response);

		  } catch (Exception e) {

	            throw new ServletException(e);

	        }

	    }

	}
