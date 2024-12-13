package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.FishCardDAO;
import bean.Camera;
import bean.FishCard;
import tool.Action;

public class CameraAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Camera camera = new Camera();


		System.out.println("読み取り後");
		System.out.println(camera.path);


		HttpSession session=request.getSession();
		FishCardDAO fishcarddao=new FishCardDAO();
		int id = Integer.parseInt(camera.path);
		FishCard fishcard = fishcarddao.search(id);


		System.out.println("DB経由");
		System.out.println(id);

		System.out.println(id);



	}

}
