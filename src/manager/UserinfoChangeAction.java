package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import tool.Action;

public class UserinfoChangeAction {



	public class PasswordResetAction extends Action {

		public void execute(
		HttpServletRequest request, HttpServletResponse response
		) throws Exception {


			String email=request.getParameter("email");
			String password = request.getParameter("password");
			String username = request.getParameter("username");

			UserDAO dao=new UserDAO();

			int result = 0;
			result = dao.UserinfoChange(password,username,email);
			//入力されたメールアドレスが存在するか確認







			if(result != 0){

				System.out.println("oooooooooooooooooo");

				request.getRequestDispatcher("../common/password_reset_completion.jsp").forward(request, response);



			}
//			User user = dao.passwordUpdate(email, password);



			else{


					request.getRequestDispatcher("../common/password_reset_wrong.jsp").forward(request, response);

					}

				}

			}

}
