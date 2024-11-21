package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MapDAO;
import bean.Map;
import tool.Action;

public class MapAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();

		// リクエストからimageとfloorのパラメータを取得
//		String image = request.getParameter("map_image");
		String floor = request.getParameter("floor_info");

        // MapDAOを使ってマップ情報を取得
		MapDAO mapDAO = new MapDAO();
		Map map = mapDAO.search(floor);

        if (map != null) {
            // マップ情報が見つかった場合、リクエストスコープに設定
            session.setAttribute("map", map);

            // mapinfo.jspに転送して、情報を表示
            request.getRequestDispatcher("../customer/mapinfo.jsp").forward(request, response);
        } else {
            // マップ情報が見つからない場合、エラーメッセージを設定
            request.setAttribute("error", "指定されたマップ情報が見つかりません。");

            // エラーページに転送
            request.getRequestDispatcher("../common/error.jsp").forward(request, response);
        }
    }
}