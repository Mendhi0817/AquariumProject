package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MapDAO;
import tool.Action;

public class MapDeleteDoneAction extends Action {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
//        HttpSession session=req.getSession();

        // 削除対象のマップ ID を取得
        String floorInfo = req.getParameter("mapId");



        // MapDAO を使用してデータベースから削除
        MapDAO mapDAO = new MapDAO();
        mapDAO.delete(floorInfo);


            req.getRequestDispatcher("../staff/Map/map_post_delete_done.jsp").forward(req, res);
    }
}
