package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.FishCard;

public class FishCardDAO extends DAO{

// カード情報保存
	public boolean save(FishCard fish) throws Exception {
		// コネクションを確立
		Connection con = getConnection();
		// プリペアードステートメント
		PreparedStatement st = null;
//			String text = null;
//			String title = null;
		String image = null;
	//  int id = 0;
		// 実行件数
		int count = 0;
//			System.out.println(map.getFloorInfo());
//			System.out.println("123");
		try {
			if (image == null) {
				// 存在しなかった場合
				// プリペアードステートメントにINSERT文をセット
			    st = con.prepareStatement("insert into fishcard(fishcard_text, fishcard_image, fishcard_title) values(?, ?, ?)");
				st.setString(1, fish.getCardText());
				st.setString(2, fish.getCardImage());
				st.setString(3, fish.getCardTitle());
//					st.setInt(4, fish.getCardId());
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



// カード削除一覧 (staff)
	public List<FishCard> getAllCard() throws Exception {
	    List<FishCard> FishCardList = new ArrayList<>();
	    Connection con = getConnection();
	    PreparedStatement st = null;
	    ResultSet rs = null;

	    try {
	        String query = "SELECT fishcard_id, fishcard_title, fishcard_image FROM fishcard";
	        st = con.prepareStatement(query);
	        rs = st.executeQuery();


	        while (rs.next()) {
	        	FishCard fish = new FishCard();
	        	fish.setCardId(rs.getInt("fishcard_id"));       // カードIDをint型で取得
	            fish.setCardTitle(rs.getString("fishcard_title"));
	            System.out.println(fish.getCardTitle());
	            fish.setCardImage(rs.getString("fishcard_image"));

	        	FishCardList.add(fish);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        throw e; // 呼び出し元に例外を伝える
	    } finally {
	        if (rs != null) rs.close();
	        if (st != null) st.close();
	        if (con != null) con.close();
	    }

	    return FishCardList; // 取得したリストを返す
	}



	// IDから魚カード取得(customer)
		public FishCard search(int id) throws Exception {
			FishCard fish = null;
			Connection con = getConnection();
			PreparedStatement st;
			st = con.prepareStatement("select * from card_collected_log where fishcard_id=?");
			st.setInt(1,id);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				fish = new FishCard();
				fish.setCardText(rs.getString("card_text"));
				fish.setCardTitle(rs.getString("card_title"));
				fish.setCardImage(rs.getString("card_image"));
//				fish.setCardId(rs.getInt("card_id"));
			}
			st.close();
			con.close();
			return fish;
		}



		// カード一覧 (cutomer)
		public List<FishCard> getCollectedCards(String userId) throws Exception {
			List<FishCard> collectedCards = new ArrayList<>();
			Connection con = getConnection();
			PreparedStatement st;
			ResultSet rs = null;
		    try {
		    	String query = """
		    		    SELECT f.FISHCARD_TEXT, f.FISHCARD_IMAGE, f.FISHCARD_TITLE
		    		    FROM FISHCARD f
		    		    INNER JOIN CARD_COLLECTED_LOG ccl
		    		    ON f.FISHCARD_ID = ccl.FISHCARD_ID
		    		    WHERE ccl.USER_ID = ?
		    		""";
		        st = con.prepareStatement(query);
		        st.setInt(1, userId);
		        rs = st.executeQuery();

		        while (rs.next()) {
		            FishCard fishCard = new FishCard();
		            fishCard.setCardText(rs.getString("FISHCARD_TEXT"));
		            fishCard.setCardImage(rs.getString("FISHCARD_IMAGE"));
		            fishCard.setCardTitle(rs.getString("FISHCARD_TITLE"));
		            collectedCards.add(fishCard);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		        throw e;
		    } finally {
		        if (rs != null) rs.close();
		        if (st != null) st.close();
		        if (con != null) con.close();
		    }

		    return collectedCards;
		}


	// カードIDからカード情報を取り出す
		public FishCard getCardInfo(int id) throws Exception {
			FishCard fishcard = new FishCard();
		    Connection con = getConnection();
		    PreparedStatement st = null;
		    ResultSet rs = null;

		    try {
		        String q = "SELECT fishcard_id, fishcard_title, fishcard_image, fishcard_text FROM fishcard WHERE fishcard_id=?";
		        st = con.prepareStatement(q);
		        st.setInt(1, id);

		        rs = st.executeQuery();

		        // 結果があればmap_imageを取得
		        if (rs.next()) {
		        	fishcard.setCardImage(rs.getString("fishcard_image"));
		        	fishcard.setCardTitle(rs.getString("fishcard_title"));
		        	fishcard.setCardText(rs.getString("fishcard_text"));
		        	fishcard.setCardId(rs.getInt("fishcard_id"));

		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		        throw e;
		    } finally {
		        if (rs != null) rs.close();
		        if (st != null) st.close();
		        if (con != null) con.close();
		    }

		    return fishcard; // map_imageを返す
		}




// 魚カード削除
	public boolean delete(int id) throws Exception {
		// コネクションを確立
		Connection connection = getConnection();
		// プリペアードステートメント
		PreparedStatement statement = null;
		// 実行件数
		int count = 0;
		try {
			// データベースから取得
//			Contuct old = get(contuct.getContuctId());
			if(id != 0){
			    // 学生が存在した場合
			    // プリペアードステートメントにDELETE文をセット
			    statement = connection
			            .prepareStatement("delete fishcard where fishcard_id =? ");
			    // プリペアードステートメントに値をバインド
			    statement.setInt(1, id);
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