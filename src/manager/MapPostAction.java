package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MapPostAction {
	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {



				request.getRequestDispatcher("../staff/Map/map_submission.jsp").forward(request, response);


		}

}
