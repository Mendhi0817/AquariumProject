package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;


public class Change_User_Data_CompleteAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		request.getRequestDispatcher("../suizokutachiproject/coupon_C/complete/user_change_completion2.jsp").forward(request, response);

	}

		//login
	}