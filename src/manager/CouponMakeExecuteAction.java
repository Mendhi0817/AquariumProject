package manager;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CouponDAO;
import bean.Coupon;
import tool.Action;
public class CouponMakeExecuteAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//TODO 自動生成されたメソッド·スタブ
		HttpSession session=request.getSession();//セッション
//		NotificationData Notification=(NotificationData)session.getAttribute("user");
//a

		String cTitle = "";
		String cText = "";
//		Date NotificationDataDay = null;

		//List<Student>students=null;//学生リスト



//		LocalDate todaysDate=LocalDate.now();//LocolDateインスタンスを取得
//		int year=todaysDate.getYear();//現在の年を取得
		CouponDAO cDao=new CouponDAO();//学生dao
		Map<String, String>errors=new HashMap<>();//エラーメッセージ

		cTitle=request.getParameter("f1");
		cText=request.getParameter("f2");
//		NotificationDataDay=Date.valueOf(request.getParameter("f3"));

		Coupon coupon = new Coupon();
		coupon.setCOUPON_TITLE(cTitle);
		coupon.setCOUPON_TEXT(cText);
//		notification.setNd(NotificationDataDay);


		        // StudentDaoを使って学生情報をデータベースに保存
		        cDao.save(coupon);
		    request.getRequestDispatcher("../staff/notification_data/post_complete.jsp").forward(request, response);

	}

}

		//在学フラグが送信されていた場合jj
//		if (isAttendStr!=null){
//			//在学フラグを立てる
//			isAttend=true;
//			//リクエストに在学フラグをセット
//			request.setAttribute("f3",isAttendStr);
//		}
		//リクエストに学生リストをセット
//		request.setAttribute("students",students);
//		//リクエストにデータをセット
//		request.setAttribute("class_num_set",list);
//		request.setAttribute("ent_year_set",entYearSet);
//
//		//JSPにフォワード 7
//		request.getRequestDispatcher("student_list.jsp").forward(request,response);
