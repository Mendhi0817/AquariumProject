package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Map;
public class MapDAO extends DAO {

	public Map search(String image, int floorinfo,int mapid)
			throws Exception {
		Map map = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("select * from userinfo where image = ? and floor=?");
		st.setString(1,image);
		st.setInt(2,floorinfo);
		st.setInt(3, mapid);


		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			map = new Map();
			map.setMapImage(rs.getString("image"));
			map.setFloorInfo(rs.getInt("floorinfo"));
			map.setMapId(rs.getInt("mapid"));
		}
		st.close();
		con.close();
		return map;



	}






}
