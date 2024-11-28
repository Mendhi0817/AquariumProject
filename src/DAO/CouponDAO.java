package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Coupon;
import bean.NotificationData;
//import bean.NotificationData;

public class CouponDAO extends DAO{

	public List<Coupon> searchTitle() throws Exception {

		List<Coupon> listTitle = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st;

		st = con.prepareStatement("select COUPON_TITLE from COUPON");

//		st.setString(1,image);


		ResultSet rs = st.executeQuery();

		while (rs.next()) {

			Coupon coupon = new Coupon();

			coupon.setCOUPON_TITLE(rs.getString("COUPON_TITLE"));

			listTitle.add(coupon);


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

			notification.setCOUPON_ID(rs.getString("CONTACT_ID"));

			listId.add(notification);

		}

		st.close();

		con.close();

		return listId;

	}





	public Coupon get(String ci) throws Exception {
		// 学校インスタンスを初期化
		Coupon coupon = new Coupon();
		// データベースへのコネクションを確率
		Connection connection = getConnection();
		// プリペアードステートメント
		PreparedStatement statement = null;

		try {
			// プリペアードステートメントにSQL文をセット
			statement = connection.prepareStatement("select NOTIFICATION_CONTENT,NOTIFICATION_TITLE from NOTIFICATION_DATA where CONTACT_ID=?;");
			// プリペアードステートメントに学校コードをバインド
//			String nt = null;
//			String nc = null;
//			Date nd = null;
//			String ni = null;
			statement.setString(1, ci);
//			statement.setString(1, ct);
			// プリペアードステートメントを実行
			ResultSet rSet = statement.executeQuery();

			if (rSet.next()) {
				// リザルトセットが存在する場合
				// 学校インスタンスに学校コードと学校名をセット
				coupon.setCOUPON_TITLE(rSet.getString("NOTIFICATION_TITLE"));
				coupon.setCOUPON_TEXT(rSet.getString("NOTIFICATION_CONTENT"));
//				coupon.setNd(rSet.getDate("NOTIFICATION_DATE"));
			} else {
				// 存在しない場合
				// 学校インスタンスにnullをセット
				coupon = null;
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
		return coupon;
	}



//------------------------------------------------------------------------------------------------------------------------------

		public boolean save(Coupon coupon) throws Exception {

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

				            "insert into NOTIFICATION_DATA(NOTIFICATION_TITLE, NOTIFICATION_CONTENT) values(?, ?)");

//				    // プリペアードステートメントに値をバインド
//
				    statement.setString(1, coupon.getCOUPON_TITLE());

				    statement.setString(2, coupon.getCOUPON_TEXT());

//				    statement.setDate(3,  notification.getNd());

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

			public boolean Delete(String ci) throws Exception {

				// コネクションを確立

				Connection connection = getConnection();

				// プリペアードステートメント

				PreparedStatement statement = null;

				// 実行件数

				int count = 0;


				try {

					// データベースから学生を取得

//					Contuct old = get(contuct.getContuctId());

					if(ci != null){

					    // 学生が存在した場合

					    // プリペアードステートメントにDELETE文をセット

					    statement = connection.prepareStatement("delete from NOTIFICATION_DATA where CONTACT_ID=? ");

					    // プリペアードステートメントに値をバインド

					    statement.setString(1, ci);

					    System.out.println(ci);

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
