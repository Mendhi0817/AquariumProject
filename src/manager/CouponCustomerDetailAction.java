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

            String CI = request.getParameter("ci");
        	int ci = Integer.parseInt(CI);
            Coupon cAll = cDAO.get(ci);




            // 取得したデータをリクエスト属性にセット

            request.setAttribute("cAll", cAll);
            request.setAttribute("ci", ci);



		request.getRequestDispatcher("../customer/coupon_C/coupon_C_detail.jsp").forward(request, response);

		  } catch (Exception e) {

	            throw new ServletException(e);

	        }

	    }

	}
