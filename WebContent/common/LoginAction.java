import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import tool.Action;

public class LoginAction extends Action {
	public String execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		String login=request.getParameter("login");
		String password=request.getParameter("password");
		UserDAO dao=new UserDAO();
		User user=dao.search(login, password);

		if (user!=null){
			session.setAttribute("user", user);
			return"login-out.jsp";
		}
	}
}