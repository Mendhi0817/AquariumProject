package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Camera;
import tool.Action;

public class CameraAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Camera camera = new Camera();

		System.out.println("読み取り後");
		System.out.println(camera.path);



	}

}
