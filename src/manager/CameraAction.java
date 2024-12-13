package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Camera;
import tool.Action;

public class CameraAction extends Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Camera camera = new Camera();
		System.out.println(camera.path);


		System.out.println(camera.path);

		request.setAttribute("path", camera.path);

		request.getRequestDispatcher("../suizokutachiproject/home_C/home_C.jsp").forward(request, response);


	}

}
