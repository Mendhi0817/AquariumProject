package manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MapDAO;
import bean.Map;
import tool.Action;

public class MapViewsAction extends Action {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            MapDAO mapDAO = new MapDAO();

            List<Map> listmap = mapDAO.searchAll();

            // 取得したデータをリクエスト属性にセット

            request.setAttribute("listmap", listmap);

            // JSPにフォワード

            request.getRequestDispatcher("../customer/map/map_view.jsp").forward(request, response);

        } catch (Exception e) {

            throw new ServletException(e);

        }

    }

}

