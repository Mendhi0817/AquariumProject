package manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FishCardDAO;
import bean.FishCard;
import tool.Action;

// 魚カード一覧(staff)
public class FishCardViewAction extends Action {
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // FishCardDAOを使ってカード情報を取得
            FishCardDAO fishcardDAO = new FishCardDAO();
            List<FishCard> FishCardList = fishcardDAO.getAllCard();

//            // リクエストパラメータからfishcard_idを取得
//            String fishcardId = request.getParameter("fishcard_id");
//            if (fishcardId == null || fishcardId.isEmpty()) {
//                throw new Exception("fishcard_id がリクエストに含まれていません");
//            }

//            String cardTitle = null;
//            String cardImage = null;
//
//
//            if (cardTitle == null || cardImage == null) {
//                throw new Exception("指定された fishcard_id: " + fishcardId + " に該当するカード情報が見つかりません");
//            }

            // 取得したデータをリクエスト属性にセット
            request.setAttribute("FishCardList", FishCardList);
//            request.setAttribute("cardTitle", cardTitle);     // タイトルをセット
//            request.setAttribute("cardImage", cardImage);     // 画像パスをセット

            // JSPにフォワード
            request.getRequestDispatcher("../staff/Card/fish_card_view.jsp").forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
