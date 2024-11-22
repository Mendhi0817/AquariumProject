package manager;

import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Contuct;
import tool.Action;


public class Notification_data_editAction extends Action {

		public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

			// ローカル変数の宣言

			HttpSession session = req.getSession(); // セッション情報を取得
			PreparedStatement statement = null;


//			NotificationData notification = (NotificationData)session.getAttribute("user");



			Contuct contact = cDao.get();

			req.setAttribute("title", contact.getContactTitle());	// リクエストにデータをセット


		request.getRequestDispatcher("../staff/notification_data/notification_data_edit.jsp").forward(request, response);

	}

		//login
	}
