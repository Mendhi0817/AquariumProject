package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import bean.User;
import tool.Action;

public class ContactAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		HttpSession session=request.getSession();

		String title=request.getParameter("ct");
		String contact=request.getParameter("cc");
		String date=request.getParameter("cd");
		UserDAO dao=new UserDAO();
		User user = dao.get(title, contact, date);



		if(user!= null){
			session.setAttribute("user", user);
			if(user.getFlag().equals("3")){
				request.getRequestDispatcher("../staff/StaffHome.jsp").forward(request, response);

			}


				else if(user.getFlag().equals("1")){
					System.out.print("111111");


				request.getRequestDispatcher("../suizokutachiproject/home/home J.html").forward(request, response);

				}

				else if(user.getFlag().equals("2")){
					System.out.print("222222");


				request.getRequestDispatcher("../suizokutachiproject/home/home J.html").forward(request, response);

				}


			}

			System.out.println(user.getFlag());
			System.out.print(ct);
			System.out.print(cc);
			System.out.print(cd);


		}

		//login
	}
