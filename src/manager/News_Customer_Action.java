package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;


public class News_Customer_Action extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		request.getRequestDispatcher("../customer/news_c/news_view.jsp").forward(request, response);

	}

		//login
	}