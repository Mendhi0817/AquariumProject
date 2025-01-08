package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.FishCardDAO;
import bean.Camera;
import bean.FishCard;
import bean.User;
import tool.Action;


public class CameraAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Camera camera = new Camera();


		System.out.println("読み取り後");
		System.out.println(camera.path);


		FishCard fishcard = new FishCard();

		FishCardDAO  fishcarddao = new FishCardDAO();

		// ユーザーID取得
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		System.out.println(user.getUserId());




		int id = Integer.parseInt(camera.path);

		fishcard = fishcarddao.getCardInfo(id);

		boolean log = fishcarddao.cardLog(user.getUserId(),id);







		System.out.println("DB経由");
		System.out.println(id);



		if(id != 0 && log){







				request.setAttribute("fishcard",fishcard);
				request.getRequestDispatcher("../staff/Card/fish_card_get.jsp").forward(request, response);





			}



		else{
				request.getRequestDispatcher("../suizokutachiproject/home_C/home_C.jsp").forward(request, response);



			}

	}

}
