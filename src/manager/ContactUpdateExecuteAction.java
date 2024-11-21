package manager;
import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Contuct;
//import bean.Contact;
//import bean.Teacher;
import DAO.ContuctDAO;
import tool.Action;
public class ContactUpdateExecuteAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//TODO 自動生成されたメソッド·スタブ
		HttpSession session=request.getSession();//セッション
		Contuct Contuct=(Contuct)session.getAttribute("user");


		String ContactTitle = "";
		String ContactContent = "";
		Date ContactDate = null;
		String ci = null;

		//List<Student>students=null;//学生リスト

		LocalDate todaysDate=LocalDate.now();//LocolDateインスタンスを取得
//		int year=todaysDate.getYear();//現在の年を取得
		ContuctDAO cDao=new ContuctDAO();//学生dao
		Map<String, String>errors=new HashMap<>();//エラーメッセージ

//		ContactTitle=request.getParameter("f1");
//		ContactContent=request.getParameter("f2");
//		ContactDate=Date.valueOf(request.getParameter("f3"));


		        // StudentDaoを使って学生情報をデータベースに保存
		        cDao.delete(ci);
		        
		        
		        
		        
		        
		        
		        
		    request.getRequestDispatcher("complete.jsp").forward(request, response);
		}
	}

}

