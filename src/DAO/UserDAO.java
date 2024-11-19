package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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




	public boolean userAdd(User user) throws Exception{

		Connection connection = getConnection();

		// プリペアードステートメント

		PreparedStatement statement = null;

		// 実行件数

		int count = 0;


		try {

			// データベースから学生を取得

//			Contact old = get(contact.getCd(), contact.getSchool());
//
//			if (old == null) {
//
//			    // 学生が存在しなかった場合
//
//			    // プリペアードステートメントにINSERT文をセット
//
			    statement = connection.prepareStatement(

			            "insert into SUBJECT(null, SCHOOL_CD, CD, NAME) values(?, ?, ?)");

//			    // プリペアードステートメントに値をバインド
//
			    statement.setString(1, user.getUserName());

			    statement.setString(2, user.geteMail());

			    statement.setString(3, user.getPassword());

//			} else {
//
//			    // 学生が存在した場合
//
//			    // プリペアードステートメントにUPDATE文をセット
//
//			    statement = connection
//
//			            .prepareStatement("update SUBJECT set NAME=? where CD=? and SCHOOL_CD=?");
//
//			    // プリペアードステートメントに値をバインド
//
//			    statement.setString(1,  subject.getName());
//
//			    statement.setString(2, subject.getCd());
//
//			    statement.setString(3, subject.getSchool().getCd());
//
//			}
//
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











