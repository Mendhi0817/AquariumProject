package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;


public class Coupon_CAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		request.getRequestDispatcher("../suizokutachiproject/coupon_C/coupon_C.jsp").forward(request, response);

	}

		//login
	}