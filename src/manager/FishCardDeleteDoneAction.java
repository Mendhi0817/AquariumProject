package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MapDAO;
import tool.Action;

public class FishCardDeleteDoneAction extends Action {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
//        HttpSession session=req.getSession();

        // 削除対象のカードIDを取得
        String floorInfo = req.getParameter("mapId");



        // FishCardDAO を使用してデータベースから削除
        MapDAO mapDAO = new MapDAO();
        mapDAO.delete(floorInfo);


            req.getRequestDispatcher("../staff/Card/fish_card_delete_done.jsp").forward(req, res);
    }
}
