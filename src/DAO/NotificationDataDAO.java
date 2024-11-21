package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
	public NotificationData get() throws Exception {
		// 学校インスタンスを初期化
		NotificationData notification = new NotificationData();
		// データベースへのコネクションを確率
		Connection connection = getConnection();
		// プリペアードステートメント
		PreparedStatement statement = null;

		try {
			// プリペアードステートメントにSQL文をセット
			statement = connection.prepareStatement("select * from contact where ct=?");
			// プリペアードステートメントに学校コードをバインド
			String nt = null;
			String nc = null;
			Date nd = null;
			String ni = null;
			statement.setString(1, nt);
//			statement.setString(1, ct);
			// プリペアードステートメントを実行
			ResultSet rSet = statement.executeQuery();

			if (rSet.next()) {
				// リザルトセットが存在する場合
				// 学校インスタンスに学校コードと学校名をセット
				notification.setNt(rSet.getString("ct"));
				notification.setNc(rSet.getString("cc"));
				notification.setNd(rSet.getDate("cd"));
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

				            "insert into SUBJECT(SCHOOL_CD, CD, NAME) values(?, ?, ?)");

//				    // プリペアードステートメントに値をバインド
//
				    statement.setString(1, notification.getNotificationDataContent());

				    statement.setString(2, notification.getNotificationDataContent());

				    statement.setDate(3,  notification.getNotificationDataDay());

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

					    statement = connection

					            .prepareStatement("delete CONTUCT where ContuctID=? ");

					    // プリペアードステートメントに値をバインド

					    statement.setString(1, ni);

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



