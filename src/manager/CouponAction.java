package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;
public class CouponAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		request.getRequestDispatcher("../staff/Coupon/coupon_make.jsp").forward(request, response);

<<<<<<< HEAD
		HttpSession session=request.getSession();

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		UserDAO dao=new UserDAO();
		User user = dao.search(email, password);



		if(user!= null){
			session.setAttribute("user", user);
			if(user.getFlag().equals("2")){
				request.getRequestDispatcher("../staff/StaffHome.jsp").forward(request, response);

			}


				else if(user.getFlag().equals("1")){


				request.getRequestDispatcher("../suizokutachiproject/home/home_J.jsp").forward(request, response);

				}

			}

		}
=======
	}
>>>>>>> branch 'master' of https://github.com/Mendhi0817/AquariumProject.git

		//login
	}
