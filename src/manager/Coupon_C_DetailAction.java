package manager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CouponDAO;
import bean.Coupon;
import tool.Action;


public class Coupon_C_DetailAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {
		try {

            CouponDAO couponDAO = new CouponDAO();

            Coupon  coupon = couponDAO.get(ci);

            request.setAttribute("coupon", coupon);

		request.getRequestDispatcher("../customer/coupon_C/coupon_C.jsp").forward(request, response);
		 } catch (Exception e) {

	            throw new ServletException(e);

	        }

	    }

	}