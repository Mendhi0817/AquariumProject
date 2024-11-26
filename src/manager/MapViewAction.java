package manager;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MapDAO;
import tool.Action;

public class MapViewAction extends Action{

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            // MapDAOを使ってマップ情報を取得
    		MapDAO mapDAO = new MapDAO();
            List<String> floorInfoList = mapDAO.getAllFloorInfo();

            String floor = floorInfoList.get(0);
            floor = request.getParameter("floor_info");

            String mapImage = mapDAO.getMapImage(floor);
            String fileName = new File(mapImage).getName();

            System.out.print(floor);
            // 取得したデータをリクエスト属性にセット
            request.setAttribute("floorInfoList", floorInfoList);

            request.setAttribute("mapImage", fileName);   //

            // JSPにフォワード

            request.getRequestDispatcher("../customer/map/map_view.jsp").forward(request, response);

        } catch (Exception e) {

            throw new ServletException(e);

        }}
    }
