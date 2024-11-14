package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;



public class NewsPostAction extends Action{
	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {



				request.getRequestDispatcher("../staff/News/news.jsp").forward(request, response);


		}

}