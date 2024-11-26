package manager;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.NotificationDataDAO;
import bean.NotificationData;
import tool.Action;
public class NotificationDataUpdateExecuteAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//TODO 自動生成されたメソッド·スタブ
//		HttpSession session=request.getSession();//セッション
//		NotificationData notificationdata=(NotificationData)session.getAttribute("user");
//z

//		String nt = "";
//		String nc = "";
//		Date nd = null;
//		String ni = null;
		String NotificationDataTitle = "";
		String NotificationDataContent = "";
		Date NotificationDataDay = null;

		String ni = request.getParameter("ni");


		//List<Student>students=null;//学生リスト

//		LocalDate todaysDate=LocalDate.now();//LocolDateインスタンスを取得
//		int year=todaysDate.getYear();//現在の年を取得
		NotificationDataDAO nDao=new NotificationDataDAO();//学生dao
//		Map<String, String>errors=new HashMap<>();//エラーメッセージ



		        // StudentDaoを使って学生情報をデータベースに削除
		        nDao.Delete(ni);


//		        情報を取得して、セット
		        NotificationDataTitle=request.getParameter("f1");
				NotificationDataContent=request.getParameter("f2");
				NotificationDataDay=Date.valueOf(request.getParameter("f3"));

				NotificationData notification = new NotificationData();
				notification.setNt(NotificationDataTitle);
				notification.setNc(NotificationDataContent);
				notification.setNd(NotificationDataDay);



		        // StudentDaoを使って学生情報をデータベースに保存
		        nDao.save(notification);


		    request.getRequestDispatcher("../staff/notification_data/edit_complet.jsp").forward(request, response);


		}
	}



