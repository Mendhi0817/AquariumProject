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

	public boolean searchEmail(String email) throws Exception{

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("select * from userinfo where email = ?");
		st.setString(1,email);

		System.out.println(email);




		ResultSet rs = st.executeQuery();


		boolean isEmail = true;

		System.out.print(rs.getString("EMAIL"));



		//合ってなかったらisEmailがfalseになる
		if (!rs.next()){
			isEmail = false;

			System.out.print(isEmail);
		}
		st.close();
		con.close();
		return isEmail;

		}




	public void passwordUpdate(String email, String password)
			throws Exception {

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("update userinfo set password = ? where email = ?");
		st.setString(1,email);
		st.setString(2,password);




		st.close();
		con.close();
//		return user;



	}













}
