package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import tool.Action;

public class NewAccountAction extends Action{


    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

    	String username = request.getParameter("username");

    	String email = request.getParameter("email");

    	String password = request.getParameter("password");



    	UserDAO UserDao = new UserDAO();

    	UserDao.userAdd(username, email, password);

        request.getRequestDispatcher("../common/new_account_done.jsp").forward(request, response);
    }




}
