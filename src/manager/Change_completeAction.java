package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import bean.User;
import tool.Action;


public class Change_completeAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		String email="";
		String username = "";
		String password = "";


		UserDAO userdao=new UserDAO();

		userdao.UserinfoChange(email,username,password);

		email = request.getParameter("email");
		username = request.getParameter("username");
		password = request.getParameter("password");

		User userdata = new User();
		userdata.seteMail(email);
		userdata.setUserName(username);
		userdata.setPassword(password);

		userdao.save(userdata);








			request.getRequestDispatcher("../suizokutachiproject/coupon_C/complete/user_change_completion.jsp").forward(request, response);



		}
//		User user = dao.passwordUpdate(email, password);


}