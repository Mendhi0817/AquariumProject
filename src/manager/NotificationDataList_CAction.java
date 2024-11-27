package manager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.NotificationDataDAO;
import bean.NotificationData;
import tool.Action;


public class NotificationDataList_CAction extends Action {



	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		try {

            NotificationDataDAO nDAO = new NotificationDataDAO();

            String ni = request.getParameter("ni");
            NotificationData nAll = nDAO.get(ni);




            // 取得したデータをリクエスト属性にセット

            request.setAttribute("nAll", nAll);
            request.setAttribute("ni", ni);



            // JSPにフォワード

			request.getRequestDispatcher("../staff/notification_data/notification_data_list_c.jsp").forward(request, response);

        } catch (Exception e) {

            throw new ServletException(e);

        }

    }

}