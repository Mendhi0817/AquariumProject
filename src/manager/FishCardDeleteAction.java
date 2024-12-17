package manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FishCardDAO;
import bean.FishCard;

public class FishCardDeleteAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            FishCardDAO fishcardDAO = new FishCardDAO();

            List<FishCard> listfish = fishcardDAO.getAllCard();

            // 取得したデータをリクエスト属性にセット

            request.setAttribute("listfish", listfish);

            // JSPにフォワード

            request.getRequestDispatcher("../staff/Card/fish_card_delete.jsp").forward(request, response);

        } catch (Exception e) {

            throw new ServletException(e);
        }
	}
}