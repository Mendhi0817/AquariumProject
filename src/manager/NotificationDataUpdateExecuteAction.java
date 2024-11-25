package manager;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.NotificationDataDAO;
import bean.NotificationData;
import tool.Action;
public class NotificationDataUpdateExecuteAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//TODO 自動生成されたメソッド·スタブ
		HttpSession session=request.getSession();//セッション
//		NotificationData notificationdata=(NotificationData)session.getAttribute("user");


		String nt = "";
		String nc = "";
		Date nd = null;
		String ni = null;

		//List<Student>students=null;//学生リスト

//		LocalDate todaysDate=LocalDate.now();//LocolDateインスタンスを取得
//		int year=todaysDate.getYear();//現在の年を取得
		NotificationDataDAO nDao=new NotificationDataDAO();//学生dao
		Map<String, String>errors=new HashMap<>();//エラーメッセージ

//		ContactTitle=request.getParameter("f1");
//		ContactContent=request.getParameter("f2");
//		ContactDate=Date.valueOf(request.getParameter("f3"));


		        // StudentDaoを使って学生情報をデータベースに削除
		        nDao.Delete(ni);


//		        情報を取得して、セット
		        nt=request.getParameter("f1");
				nc=request.getParameter("f2");
				nd=Date.valueOf(request.getParameter("f3"));

				NotificationData notification = new NotificationData();
				notification.setNt(nt);
				notification.setNc(nc);
				notification.setNd(nd);

		        // StudentDaoを使って学生情報をデータベースに保存
		        nDao.save(notification);


		    request.getRequestDispatcher("../staff/notification_data/edit_complet.jsp").forward(request, response);


		}
	}



