package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import DAO.UserDAO;
import tool.Action;

public class LoginAction extends Action {
	public String execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		HttpSession session=request.getSession();

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		UserDAO dao=new UserDAO();
		User user = (User) dao.search(email, password);


		if (user!=null){
			session.setAttribute("user", user);

			return"StaffHome.jsp";

		}
return "news.jsp";
	}
}