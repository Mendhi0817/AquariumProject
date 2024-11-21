package manager;
import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.NotificationData;
//import bean.Teacher;
import DAO.NotificationDataDAO;
import tool.Action;
public class NotificationDataCreateExecuteAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//TODO 自動生成されたメソッド·スタブ
		HttpSession session=request.getSession();//セッション
		NotificationData Contact=(NotificationData)session.getAttribute("user");

//		String entYearStr="";//入力された入学年度
//		String no="";
//		String name="";
//		String classNum="";//入力されたクラス番号
//		String isAttendStr="";//入力された在学フラグ
//		int entYear=0;//入学年度
//		boolean isAttend=false;//在学フラグ

		String ContactTitle = "";
		String ContactContent = "";
		Date ContactDate = null;

		//List<Student>students=null;//学生リスト
		
		

		LocalDate todaysDate=LocalDate.now();//LocolDateインスタンスを取得
		int year=todaysDate.getYear();//現在の年を取得
		NotificationDataDAO cDao=new NotificationDataDAO();//学生dao
		Map<String, String>errors=new HashMap<>();//エラーメッセージ

		ContactTitle=request.getParameter("f1");
		ContactContent=request.getParameter("f2");
		ContactDate=Date.valueOf(request.getParameter("f3"));
		
		NotificationData contact = new NotificationData(); 
		contact.setCt(ContactTitle);
		contact.setCc(ContactContent);
		contact.setCd(ContactDate);
		

		        // StudentDaoを使って学生情報をデータベースに保存
		        cDao.save(contact);
		    request.getRequestDispatcher("complete.jsp").forward(request, response);
		
	}

}

		//在学フラグが送信されていた場合
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
