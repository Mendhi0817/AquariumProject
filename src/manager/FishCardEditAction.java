package manager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FishCardDAO;
import bean.FishCard;
import tool.Action;


public class FishCardEditAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			// 削除対象のカードIDを取得
	    	int cardId = Integer.parseInt(request.getParameter("cardId"));
	        // FishCardDAOを使ってカード情報を取得
	        FishCardDAO fishcardDAO = new FishCardDAO();
	        FishCard FishCard = fishcardDAO.getCardInfo(cardId);

	        // 取得したデータをリクエスト属性にセット
	        request.setAttribute("FishCard", FishCard);
			request.getRequestDispatcher("../staff/Card/fish_card_edit.jsp").forward(request, response);

    } catch (Exception e) {
        throw new ServletException(e);
	}
	}
}