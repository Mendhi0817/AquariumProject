package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import bean.User;
import tool.Action;

public class PasswordResetExecuteAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		HttpSession session=request.getSession();

		String email=request.getParameter("email");
		UserDAO dao=new UserDAO();
		User user = dao.search1(email);



		if(user!= null){
			session.setAttribute("user", user);


		}

	}//login
}
