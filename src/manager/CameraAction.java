package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;


public class CameraAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		Camera camera = new Camera();
//
//
//		System.out.println("読み取り後");
//
//
//
//
//		FishCard fishcard = new FishCard();
//
//		FishCardDAO  fishcarddao = new FishCardDAO();
//
//		// ユーザーID取得
//		HttpSession session = request.getSession();
//		User user = (User)session.getAttribute("user");
//
//
//
//
//		int id = Integer.parseInt(camera.path);
//
//
//		fishcard = fishcarddao.getCardInfo(id);
//
//		FishCard check = fishcarddao.search_card(user.getUserId(),id);
//
//
//
//		System.out.println(id);
//
//		if (check != null){
//			System.out.println("登録済み");
//			request.getRequestDispatcher("../staff/Card/fish_card_get_already.jsp").forward(request, response);
//		}


//
//		else if(id != 0){
//
//
//
//
//			boolean log = fishcarddao.cardLog(user.getUserId(),id);
//
//			if(log){
//
//
//				request.setAttribute("fishcard",fishcard);
//				request.getRequestDispatcher("../staff/Card/fish_card_get.jsp").forward(request, response);
//
//
//			}
//
//
//
//
//
//
//			}
//
//
//
//
//		else{
//			String url = "FishCardList.action";
//			response.sendRedirect(url);
//
//
//			}



//

		request.getRequestDispatcher("../customer/QRcode/camera.jsp").forward(request, response);

	}

}
