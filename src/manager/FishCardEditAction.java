package manager;

import java.util.List;

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
	        // FishCardDAOを使ってカード情報を取得
	        FishCardDAO fishcardDAO = new FishCardDAO();
	        List<FishCard> FishCardList = fishcardDAO.getAllCard();

	        // 取得したデータをリクエスト属性にセット
	        request.setAttribute("FishCardList", FishCardList);
			request.getRequestDispatcher("../staff/Card/fish_card_edit.jsp").forward(request, response);

    } catch (Exception e) {
        throw new ServletException(e);
	}
	}
}