package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import tool.Action;

public class PasswordResetAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		HttpSession session =request.getSession();
		//メールアドレス存在するか確認するための変数
		boolean isEmail = true;

		String email=request.getParameter("email");
		String password = request.getParameter("password");
		UserDAO dao=new UserDAO();
		//入力されたメールアドレスが存在するか確認
		System.out.println(email);
		isEmail = dao.searchEmail(email);

		if(isEmail = true){
			dao.passwordUpdate(email, password);


			request.getRequestDispatcher("../common/password_reset_completion.jsp").forward(request, response);



		}
//		User user = dao.passwordUpdate(email, password);



				else{


				request.getRequestDispatcher("../common/password_reset_wrong.jsp").forward(request, response);

				}

			}

		}

		//login
