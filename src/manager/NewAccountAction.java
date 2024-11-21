package manager;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import bean.User;
import tool.Action;

public class NewAccountAction extends Action{


    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession(); // セッション
        User user = (User) session.getAttribute("user");

        String username = ""; // 入力された氏名
        String email = "";
        String password = "";


        // 現在の年を取得
        UserDAO uDAO = new UserDAO(); // 学生dao
        Map<String, String> errors = new HashMap<>(); // エラーメッセージ


        // デバッグ出力


        username = request.getParameter("f1");
        email = request.getParameter("f2");
        password = request.getParameter("f3");

        System.out.println(username);
        System.out.println(email);
        System.out.println(password);



        // 入力チェック
        if (username == null || username.trim().isEmpty()) {
            errors.put("f1","ユーザー名を入力してください");
        }

        if (email == null || email.trim().isEmpty()) {
            errors.put("f2", "メールアドレスを入力してください");
        }

        if (password == null || password.trim().isEmpty()) {
            errors.put("f3", "パスワードを選択してください");
        } else {
        }

        // エラーがある場合は入力画面に戻る


        // 新しい学生情報の作成
        User user1 = new User();
        user1.setUserName(username);
        user1.seteMail(email);
        user1.setPassword(password);

        user.setFlag("2"); // 学校情報をセット

        // 学生情報をデータベースに保存
       uDAO.userAdd(user1);
        request.getRequestDispatcher("../common/new_account_done.jsp").forward(request, response);
    }




}
