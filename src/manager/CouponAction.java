package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;
public class CouponAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		request.getRequestDispatcher("../staff/Coupon/coupon.jsp").forward(request, response);
}
}