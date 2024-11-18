package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ContactDAO;
import bean.Contact;
import tool.Action;

public class ContactAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {


		HttpSession session=request.getSession();

		String ct=request.getParameter("ct");
		String cc=request.getParameter("cc");
		String cd=request.getParameter("cd");
		ContactDAO dao=new ContactDAO();
		Contact contact  = dao.get();



		if(contact!= null){
			session.setAttribute("contact", contact);
			request.getRequestDispatcher("../staff/StaffHome.jsp").forward(request, response);


//			if(user.getFlag().equals("3")){
//				request.getRequestDispatcher("../staff/StaffHome.jsp").forward(request, response);
//
//			}


//				ealse if(user.getFlag().equals("1")){
//					System.out.print("111111");
//
//
//				request.getRequestDispatcher("../suizokutachiproject/home/home J.html").forward(request, response);
//
//				}
//
//				else if(user.getFlag().equals("2")){
//					System.out.print("222222");
		else{
				request.getRequestDispatcher("../staff/StaffHome.jsp").forward(request, response);



//				request.getRequestDispatcher("../suizokutachiproject/home/home J.html").forward(request, response);
//
//				}




//			System.out.println(contact.getFlag());
			System.out.print(ct);
			System.out.print(cc);
			System.out.print(cd);


		}

		//login
	}
