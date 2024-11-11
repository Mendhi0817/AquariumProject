package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import bean.User;
import tool.Action;

public class LoginAction extends Action {
	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		HttpSession session=request.getSession();

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		UserDAO dao=new UserDAO();
		User user = dao.search(email, password);



		if(user!= null){
			session.setAttribute("user", user);
			request.getRequestDispatcher("../staff/StaffHome.jsp").forward(request, response);

			System.out.print(user);
			System.out.print(email);
			System.out.print(password);

		}

	}
}