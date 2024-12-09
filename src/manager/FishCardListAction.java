package manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;

// 魚カード削除一覧(staff)
public class FishCardListAction extends Action{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        try {
//            // FishCardDAOを使ってマップ情報を取得
//    		FishCardDAO FishCardDAO = new FishCardDAO();
//            List<String> floorInfoList = FishCardDAO.getAllCard();
//
//            String floor = floorInfoList.get(0);
//            floor = request.getParameter("floor_info");
//
//            String FishCardImage = FishCardDAO.getCardImage(floor);
//            String fileName = null;
//            if(floor != null){
//            	fileName = new File(FishCardImage).getName();
//            }
//
//            System.out.print(floor);
//            // 取得したデータをリクエスト属性にセット
//            request.setAttribute("floorInfoList", floorInfoList);
//
//            request.setAttribute("FishCardImage", FishCardImage);   //
//
//		request.getRequestDispatcher("../staff/Card/fish_card_list.jsp").forward(request, response);
//
//        } catch (Exception e) {
//
//            throw new ServletException(e);
//
//        }
		}
    }