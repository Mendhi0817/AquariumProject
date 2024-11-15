package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MapDAO;
import bean.Map;
import tool.Action;


public class MapPostDoneAction extends Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		// Map mapinfo = (Map)session.getAttribute("map");

		String image=(req.getParameter("map_image"));
		int floor=Integer.parseInt(req.getParameter("floor_info"));


        // Mapオブジェクトを作成して、取得した階数と画像パスをセット
		Map map=new Map();
		map.setFloorInfo(floor);
		map.setMapImage(image);

		// MapDAOを使用してデータベースに保存
		MapDAO mapDao= new MapDAO();
		// mapDao.save(map);
        boolean Saved = mapDao.save(map);

        // リクエストスコープに保存
        session.setAttribute("map", map);

        if (Saved) {
            // 保存が成功した場合、成功ページにリダイレクト
        	req.getRequestDispatcher("../staff/Map/map_submission_done.jsp").forward(req, res);
        } else {
            // 保存が失敗した場合、エラーメッセージを設定
            req.setAttribute("error", "マップ情報の保存に失敗しました。");
            req.getRequestDispatcher("/common/error.jsp").forward(req, res);
        }

	}

}
