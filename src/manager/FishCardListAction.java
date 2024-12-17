package manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.FishCardDAO;
import bean.FishCard;
import bean.User;
import tool.Action;

// 魚カード一覧(customer)
public class FishCardListAction extends Action{
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		// ユーザーID取得
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		System.out.println(user.getUserId());

        try {
            // FishCardDAOを使ってカード情報を取得
            FishCardDAO fishcardDAO = new FishCardDAO();
            List<FishCard> FishCardList = fishcardDAO.getCollectedCards(user.getUserId());

            // 取得したデータをリクエスト属性にセット
            req.setAttribute("FishCardList", FishCardList);

            // JSPにフォワード
            req.getRequestDispatcher("../customer/card/card_browsing.jsp").forward(req, res);

        } catch (Exception e) {
            throw new ServletException(e);
        }
	}
}