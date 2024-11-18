package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Action;



public class LogoutAction extends Action{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String url = "";
		{
			url = "../common/logout_complete.jsp";
		req.getRequestDispatcher(url).forward(req, res);

		System.out.print("ログアウト完了");
	}


	}
}
