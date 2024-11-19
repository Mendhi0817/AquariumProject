package manager;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Contact;
import tool.Action;

public class ContactCreateAction extends Action {

	@Override

	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		// ローカル変数の宣言

		HttpSession session = req.getSession(); // セッション情報を取得

		Contact Contact = (Contact)session.getAttribute("contact");

		LocalDate todaysDate = LocalDate.now();	// LocalDateインスタンスを取得

		int year = todaysDate.getYear();	// 現在の年を取得

//		ContactDAO ContactDAO = new ContactDAO();	// クラス番号Daoをインスタンス化


		//リクエストパラメータ―の取得 2

		// 無し

		//DBからデータ取得 3

		// ログインユーザーの学校コードをもとにクラス番号の一覧を取得

//		List<String> list = cNumDao.filter(teacher.getSchool());

		//ビジネスロジック 4

//		List<Integer> entYearSet = new ArrayList<>();	// リストを初期化
//
//		for (int i = year - 10; i < year + 1; i++) {	// 10年前から1年後まで年をリストに追加
//
//			entYearSet.add(i);
//
//		}

		//DBへデータ保存 5

		//なし

		//レスポンス値をセット 6

//		req.setAttribute("class_num_set", list);	// リクエストにデータをセット

//		req.setAttribute("ent_year_set", entYearSet);//↓↓↓  同じく  ↓↓↓

		//JSPへフォワード 7

		req.getRequestDispatcher("news.jsp").forward(req, res); // 学生一覧まで画面遷移

	}

}
