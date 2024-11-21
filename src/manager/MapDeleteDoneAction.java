package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MapDAO;
import tool.Action;

public class MapDeleteDoneAction extends Action {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
//        HttpSession session = req.getSession();

        // 削除対象のマップ ID を取得
        String mapId = req.getParameter("map_id");

        if (mapId == null || mapId.isEmpty()) {
            // マップ ID が指定されていない場合、エラーメッセージを設定してエラーページに遷移
            req.setAttribute("error", "削除対象のマップが指定されていません。");
            req.getRequestDispatcher("../common/error.jsp").forward(req, res);
            return;
        }

        // MapDAO を使用してデータベースから削除
        MapDAO mapDAO = new MapDAO();
        boolean isDeleted = mapDAO.delete(mapId);

        if (isDeleted) {
            // 削除成功時、「削除完了」画面に転送
            req.setAttribute("message", "マップが正常に削除されました。");
            req.getRequestDispatcher("../staff/Map/map_delete_done.jsp").forward(req, res);
        } else {
            // 削除失敗時、エラーメッセージを設定してエラーページに転送
            req.setAttribute("error", "マップの削除に失敗しました。該当するデータが存在しない可能性があります。");
            req.getRequestDispatcher("../common/error.jsp").forward(req, res);
        }
    }
}