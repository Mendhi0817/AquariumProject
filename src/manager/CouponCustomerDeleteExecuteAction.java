package manager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import bean.Contact;
//import bean.Teacher;
import DAO.CouponDAO;
import tool.Action;
public class CouponCustomerDeleteExecuteAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//TODO 自動生成されたメソッド·スタブ
		HttpSession session=request.getSession();//セッション
//		NotificationData notification =(NotificationData)session.getAttribute("user");


//		String nt = "";
//		String nc = "";
//		Date nd = null;
		String ci = request.getParameter("COUPON_ID");

		//List<Student>students=null;//学生リスト

//		LocalDate todaysDate=LocalDate.now();//LocolDateインスタンスを取得
//		int year=todaysDate.getYear();//現在の年を取得
		CouponDAO cDao=new CouponDAO();//学生dao
//		Map<String, String>errors=new HashMap<>();//エラーメッセージ

//		ContactTitle=request.getParameter("f1");
//		ContactContent=request.getParameter("f2");
//		ContactDate=Date.valueOf(request.getParameter("f3"));


		        // StudentDaoを使って学生情報をデータベースに保存
		        cDao.Delete(ci);
		    request.getRequestDispatcher("../staff/Coupon/Delete_Complet.jsp").forward(request, response);
		}
	}



