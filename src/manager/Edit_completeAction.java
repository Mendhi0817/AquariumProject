package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;


public class Edit_completeAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		request.getRequestDispatcher("../stafft/notification_data/edit_complete.jsp").forward(request, response);

	}

		//login
	}