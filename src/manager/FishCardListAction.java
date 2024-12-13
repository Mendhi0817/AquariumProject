package manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FishCardDAO;
import tool.Action;

// 魚カード一覧(customer)
public class FishCardListAction extends Action{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            // FishCardDAOを使ってカード情報を取得
            FishCardDAO fishcardDAO = new FishCardDAO();
            List<String> FishCardList = fishcardDAO.etCollectedCards();

            // リクエストパラメータからfishcard_idを取得
            String fishcardId = request.getParameter("fishcard_id");

            String cardTitle = null;
            String cardImage = null;

            // FishCardListから指定されたカード情報を検索
            for (int i = 0; i < FishCardList.size(); i += 2) {
                if (FishCardList.get(i).equals(fishcardId)) {
                    cardTitle = FishCardList.get(i);          // タイトル
                    cardImage = FishCardList.get(i + 1);      // 画像パス
                    break;
                }
            }

            if (cardTitle == null || cardImage == null) {
                throw new Exception("指定されたカード情報が見つかりません");
            }

            // 取得したデータをリクエスト属性にセット
            request.setAttribute("FishCardList", FishCardList);
            request.setAttribute("cardTitle", cardTitle);     // タイトルをセット
            request.setAttribute("cardImage", cardImage);     // 画像パスをセット

            // JSPにフォワード
            request.getRequestDispatcher("../staff/Card/fish_card_list.jsp").forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
		}
    }