package manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.h2.engine.User;

import DAO.MapDAO;
import bean.Map;
import tool.Action;


public class MapPostDoneAction extends Action {


	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		UserInfo userinfo = (User)session.getAttribute("user");

		String map_image=(req.getParameter("mapimage"));
		int floor_info=Integer.parseInt(req.getParameter("floorinfo"));
		int mapid=Integer.parseInt(req.getParameter("mapid"));

		Map map=new Map();
		map.setFloorInfo(floor_info);
		map.setMapImage(map_image);
		map.setMapId(mapid);

		MapDAO sDao= new MapDAO();
		sDao.save(map);

				req.getRequestDispatcher("../staff/Map/map_submission_done.jsp").forward(req, res);


		}

}
