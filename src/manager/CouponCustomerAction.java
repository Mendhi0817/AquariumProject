
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
		try{
			CouponDAO couponDAO = new CouponDAO();
			List<Coupon> listTitle = couponDAO.searchTitle();
			List<Coupon> listId = couponDAO.searchId();


            request.setAttribute("listTitle", listTitle);
            request.setAttribute("listId", listId);

            // JSPにフォワード

            request.getRequestDispatcher("../customer/coupon_C/coupon_C.jsp").forward(request, response);

       } catch (Exception e) {

            throw new ServletException(e);

        }

    }

}
