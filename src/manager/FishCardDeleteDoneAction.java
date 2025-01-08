package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FishCardDAO;
import tool.Action;

public class FishCardDeleteDoneAction extends Action {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
//        HttpSession session=req.getSession();

        // 削除対象のカードIDを取得
    	int cardId = Integer.parseInt(req.getParameter("cardId"));

        // FishCardDAO を使用してデータベースから削除
        FishCardDAO fishcardDAO = new FishCardDAO();
        fishcardDAO.delete(cardId);

            req.getRequestDispatcher("../staff/Card/fish_card_delete_done.jsp").forward(req, res);
    }
}
