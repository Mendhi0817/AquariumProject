package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Map;
public class MapDAO extends DAO {

	public Map search(int floor) throws Exception {
		Map map = null;
		Connection con = getConnection();
		PreparedStatement st;

		st = con.prepareStatement("select * from mapinfo where floor_info=?");
//		st.setString(1,image);
		st.setInt(1,floor);

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			map = new Map();
			map.setMapImage(rs.getString("map_image"));
			map.setFloorInfo(rs.getInt("floor_info"));

		}
		st.close();
		con.close();
		return map;

	}


public boolean save(Map map) throws Exception {
	// コネクションを確立
	Connection con = getConnection();
	// プリペアードステートメント
	PreparedStatement st = null;

	String image = null;
//  int floor = 0;

	// 実行件数
	int count = 0;

	try {
		if (image == null) {
			// 存在しなかった場合
			// プリペアードステートメントにINSERT文をセット
		    st = con.prepareStatement("insert into MAPINFO(MAP_IMAGE, FLOOR_INFO) values(?, ?)");
			st.setString(1, map.getMapImage());
			st.setInt(2, map.getFloorInfo());

		}
		// プリペアードステートメントを実行
		count = st.executeUpdate();

	} catch (Exception e) {
		throw e;
	} finally {
		// プリペアードステートメントを閉じる
		if (st != null) {
			try {
				st.close();
			} catch (SQLException sqle) {
				throw sqle;
			}
		}
	}

	if (count > 0) {
		// 実行件数が1件以上ある場合
		return true;
	} else {
		//実行件数が0件の場合
		return false;
	}
	}
}
