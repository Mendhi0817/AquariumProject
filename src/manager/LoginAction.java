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
			if(user.getFlag().equals("2")){
				request.getRequestDispatcher("../common/home_staff.jsp").forward(request, response);



			}



				else if(user.getFlag().equals("1")){


				String url = "FishCardList.action";
				response.sendRedirect(url);

				}



			}

		else{
		request.getRequestDispatcher("../common/login_misstake.jsp").forward(request, response);
		}


		}

		//login
	}
