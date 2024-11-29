package manager;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.FishCardDAO;
import tool.Action;

public class FishCardListAction extends Action{

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            // FishCardDAOを使ってマップ情報を取得
    		FishCardDAO FishCardDAO = new FishCardDAO();
            List<String> floorInfoList = FishCardDAO.getAllCardId();

            String floor = floorInfoList.get(0);
            floor = request.getParameter("floor_info");

            String FishCardImage = FishCardDAO.getFishCardImage(floor);
            String fileName = null;
            if(floor != null){
            	fileName = new File(FishCardImage).getName();
            }

            System.out.print(floor);
            // 取得したデータをリクエスト属性にセット
            request.setAttribute("floorInfoList", floorInfoList);

            request.setAttribute("FishCardImage", FishCardImage);   //

		request.getRequestDispatcher("../staff/Card/fish_card_list.jsp").forward(request, response);

	}}
}
		//login
	}