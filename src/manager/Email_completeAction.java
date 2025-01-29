package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import tool.Action;

public class Email_completeAction extends Action{

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		String email=request.getParameter("email");
		String password = request.getParameter("password");
		UserDAO dao=new UserDAO();

		int result = 0;
		result = dao.passwordUpdate(password,email);
		//入力されたメールアドレスが存在するか確認
		System.out.println(password);

		System.out.println(email);







		if(result != 0){

			System.out.println("客のやつ");

			request.getRequestDispatcher("../suizokutachiproject/coupon_C/complete/mail_complete.jsp").forward(request, response);



		}
//		User user = dao.passwordUpdate(email, password);





			}



}
