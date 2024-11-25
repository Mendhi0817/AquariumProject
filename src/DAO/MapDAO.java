package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Map;
public class MapDAO extends DAO {

	public List<Map> searchAll() throws Exception {
		List<Map> listmap = new ArrayList<>();
		Connection con = getConnection();
		PreparedStatement st;

		st = con.prepareStatement("select * from map_info");
//		st.setString(1,image);


		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Map map = new Map();
			map.setFloorInfo(rs.getString("floor_info"));
			listmap.add(map);
		}
		st.close();
		con.close();
		return listmap;
	}



	public Map search(String floor) throws Exception {
		Map map = null;
		Connection con = getConnection();
		PreparedStatement st;

		st = con.prepareStatement("select * from mapinfo where floor_info=?");
//		st.setString(1,image);
		st.setString(1,floor);

		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			map = new Map();
			map.setMapImage(rs.getString("map_image"));
			map.setFloorInfo(rs.getString("floor_info"));

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

//	System.out.println(map.getFloorInfo());
//	System.out.println("123");

	try {
		if (image == null) {
			// 存在しなかった場合
			// プリペアードステートメントにINSERT文をセット
		    st = con.prepareStatement("insert into MAP_INFO(MAP_IMAGE, FLOOR_INFO) values(?, ?)");
			st.setString(1, map.getMapImage());
			st.setString(2, map.getFloorInfo());

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



public boolean delete(String floorInfo) throws Exception {
	// コネクションを確立
	Connection connection = getConnection();
	// プリペアードステートメント
	PreparedStatement statement = null;
	// 実行件数
	int count = 0;

	try {
		// データベースから取得
//		Contuct old = get(contuct.getContuctId());
		if(floorInfo != null){
		    // 学生が存在した場合
		    // プリペアードステートメントにDELETE文をセット
		    statement = connection
		            .prepareStatement("delete map_info where floor_info=? ");
		    // プリペアードステートメントに値をバインド
		    statement.setString(1, floorInfo);
		}
		// プリペアードステートメントを実行
		count = statement.executeUpdate();
	} catch (Exception e) {
		throw e;
	} finally {
		// プリペアードステートメントを閉じる
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException sqle) {
				throw sqle;
			}
		}
		// コネクションを閉じる
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException sqle) {
				throw sqle;
			}
		}
	}
	if (count > 0) {
		// 実行件数が1件以上ある場合
		return true;
	} else {
		// 実行件数が０件の場合
		return false;
	}
}
}