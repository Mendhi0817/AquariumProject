package manager;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.NotificationDataDAO;
import bean.NotificationData;
import tool.Action;


public class Notification_data_customerAction extends Action {

	public void execute(
	HttpServletRequest request, HttpServletResponse response
	) throws Exception {

		try {

            NotificationDataDAO nDAO = new NotificationDataDAO();

            List<NotificationData> listTitle = nDAO.searchTitle();
            List<NotificationData> listId = nDAO.searchId();


            // 取得したデータをリクエスト属性にセット

            request.setAttribute("listTitle", listTitle);
            request.setAttribute("listId", listId);


		request.getRequestDispatcher("../staff/notification_data/notification_data_customer.jsp").forward(request, response);

	} catch (Exception e) {

        throw new ServletException(e);

	}
//		req.getRequestDispatcher("../staff/notification_data/notification_data_edit.jsp").forward(request, response);

    }

}



		//login
