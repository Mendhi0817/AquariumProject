package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.NotificationData;

public class NotificationDataDAO extends DAO {
	/**
	 * getメソッド 学校コードを指定して学校インスタンスを１件取得する
	 *
	 * @param cd:String
	 *            学校コード
	 * @return 学校クラスのインスタンス 存在しない場合はnull
	 * @throws Exception
	 */

	public List<NotificationData> searchTitle() throws Exception {

		List<NotificationData> listTitle = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st;

		st = con.prepareStatement("select NOTIFICATION_TITLE from NOTIFICATION_DATA");

//		st.setString(1,image);


		ResultSet rs = st.executeQuery();

		while (rs.next()) {

			NotificationData notification = new NotificationData();

			notification.setNt(rs.getString("NOTIFICATION_TITLE"));

			listTitle.add(notification);


		}

		st.close();

		con.close();

		return listTitle;

	}

	public List<NotificationData> searchId() throws Exception {

		List<NotificationData> listId = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st;

		st = con.prepareStatement("select CONTACT_ID from  NOTIFICATION_DATA ");

//		st.setString(1,image);


		ResultSet rs = st.executeQuery();

		while (rs.next()) {

			NotificationData notification = new NotificationData();

			notification.setNt(rs.getString("CONTACT_ID"));

			listId.add(notification);

		}

		st.close();

		con.close();

		return listId;

	}





	public NotificationData get(String ni) throws Exception {
		// 学校インスタンスを初期化
		NotificationData notification = new NotificationData();
		// データベースへのコネクションを確率
		Connection connection = getConnection();
		// プリペアードステートメント
		PreparedStatement statement = null;

		try {
			// プリペアードステートメントにSQL文をセット
			statement = connection.prepareStatement("select * from contact where CONTACT_ID=?");
			// プリペアードステートメントに学校コードをバインド
			String nt = null;
			String nc = null;
			Date nd = null;
			String ci = null;
			statement.setString(1, ci);
//			statement.setString(1, ct);
			// プリペアードステートメントを実行
			ResultSet rSet = statement.executeQuery();

			if (rSet.next()) {
				// リザルトセットが存在する場合
				// 学校インスタンスに学校コードと学校名をセット
				notification.setNt(rSet.getString("nt"));
				notification.setNc(rSet.getString("nc"));
				notification.setNd(rSet.getDate("nd"));
			} else {
				// 存在しない場合
				// 学校インスタンスにnullをセット
				notification = null;
			}
		}catch (Exception e) {
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
		return notification;
	}



//------------------------------------------------------------------------------------------------------------------------------

		public boolean save(NotificationData notification) throws Exception {

			// コネクションを確立

			Connection connection = getConnection();

			// プリペアードステートメント

			PreparedStatement statement = null;

			// 実行件数

			int count = 0;


			try {

				// データベースから学生を取得

//				Contact old = get(contact.getCd(), contact.getSchool());
//
//				if (old == null) {
//
//				    // 学生が存在しなかった場合
//
//				    // プリペアードステートメントにINSERT文をセット
//
				    statement = connection.prepareStatement(

				            "insert into NOTIFICATION_DATA(NOTIFICATION_TITLE, NOTIFICATION_CONTENT, NOTIFICATION_DATE) values(?, ?, ?)");

//				    // プリペアードステートメントに値をバインド
//
				    statement.setString(1, notification.getNt());

				    statement.setString(2, notification.getNc());

				    statement.setDate(3,  notification.getNd());

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
//----------------------------------------------------------------------------------------------------------

			public boolean Delete(String ni) throws Exception {

				// コネクションを確立

				Connection connection = getConnection();

				// プリペアードステートメント

				PreparedStatement statement = null;

				// 実行件数

				int count = 0;


				try {

					// データベースから学生を取得

//					Contuct old = get(contuct.getContuctId());

					if(ni != null){

					    // 学生が存在した場合

					    // プリペアードステートメントにDELETE文をセット

					    statement = connection.prepareStatement("delete from NOTIFICATION_DATA where CONTACT_ID=? ");

					    // プリペアードステートメントに値をバインド

					    statement.setString(1, ni);

					    System.out.println(ni);

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



