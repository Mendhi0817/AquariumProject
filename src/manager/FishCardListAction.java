package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;


public class FishCardListAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		request.getRequestDispatcher("../staff/Card/fish_card_list.jsp").forward(request, response);

	}

		//login
	}