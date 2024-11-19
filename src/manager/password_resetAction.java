package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;



public class password_resetAction extends Action{
	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {



				request.getRequestDispatcher("../suizokutachiproject/setting_C/password_reset.jsp").forward(request, response);


		}

}