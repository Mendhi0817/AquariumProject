package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;
public class UserDAO extends DAO {

	public User search(String email, String password)
			throws Exception {
		User user = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("select * from userinfo where email = ? and password=?");
		st.setString(1,email);
		st.setString(2,password);


		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			user = new User();
			user.seteMail(rs.getString("email"));
			user.setFlag(rs.getString("flag"));
		}
		st.close();
		con.close();
		return user;



	}

	public User Search(String email)
			throws Exception {
		User user = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("select * from userinfo where email = ?");
		st.setString(1,email);



		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			user = new User();
			user.seteMail(rs.getString("email"));
		}
		st.close();
		con.close();
		return user;



	}

	public User search1(String email, int id)
			throws Exception {
		User user = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("update userinfo set email = ?, where user_id = ?");
		st.setString(1,email);
		st.setInt(2,id);



		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			user = new User();
			user.seteMail(rs.getString("email"));
			user.
		}
		st.close();
		con.close();
		return user;



	}









}
