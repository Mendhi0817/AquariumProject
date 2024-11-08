package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;
public class UserDAO extends DAO {

	public User search(String login, String password, String email)
			throws Exception {
		User user = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("select * from user where login = ? and password=?");
		st.setString(1,login);
		st.setString(2,password);
		st.setString(3, email);


		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			user = new User();
			user.seteMail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			user.setLogin(rs.getString("login"));
		}
		st.close();
		con.close();
		return user;



	}



}
