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
			user.setPassword(rs.getString("password"));
		}
		st.close();
		con.close();
		return user;



	}






}
