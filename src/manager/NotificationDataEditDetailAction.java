package manager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.NotificationDataDAO;
import bean.NotificationData;
import tool.Action;


public class NotificationDataEditDetailAction extends Action {



	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		try {

            NotificationDataDAO nDAO = new NotificationDataDAO();

            String ni = request.getParameter("ni");
            NotificationData nAll = nDAO.get(ni);




            // 取得したデータをリクエスト属性にセット

            request.setAttribute("nAll", nAll);



            // JSPにフォワード

			request.getRequestDispatcher("../staff/notification_data/notification_data_edit_detail.jsp").forward(request, response);

        } catch (Exception e) {

            throw new ServletException(e);

        }

    }

}




