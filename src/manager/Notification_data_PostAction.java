package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;



public class Notification_data_PostAction extends Action{
	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {



				request.getRequestDispatcher("../staff/notification_data/notification_data.jsp").forward(request, response);


		}

}