package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import bean.User;
import tool.Action;

public class PasswordResetAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		HttpSession session=request.getSession();

		String email=request.getParameter("email");
		UserDAO dao=new UserDAO();
		User user = dao.Search(email);



		if(user!= null){
			session.setAttribute("user", user);
			if(user.geteMail().equals(email)){
				request.getRequestDispatcher("../common/password_reset_completion.jsp").forward(request, response);



			}


				else{


				request.getRequestDispatcher("../common/password_reset_wrong.jsp").forward(request, response);

				}

			}

		}

		//login
	}
