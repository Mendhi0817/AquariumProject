package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.Map;

public class MapDAO extends DAO {

    /**
     * マップの写真と階層情報を保存するメソッド
     *
     * @param map マップインスタンス（写真と階層情報を含む）
     * @throws Exception 写真が添付されていない場合、またはSQLエラーが発生した場合
     */
    public void saveMap(Map map) throws Exception {
        // データベースへのコネクションを確立
        Connection connection = getConnection();
        PreparedStatement statement = null;

        try {
            // マップ写真が添付されているかを確認
            if (map.getMapImage() == null) {
                throw new Exception("マップの写真が添付されていません。");
            }

            // SQL文を準備
            String sql = "INSERT INTO MapInfo(floor, map_picture) VALUES (?, ?)";
            statement = connection.prepareStatement(sql);

            // パラメータを設定
            statement.setInt(1, map.getFloorInfo());           // 階層情報
            statement.setBlob(2, map.getMapImage());         // マップの写真
            statement.setInt(3, map.getMapId());             // ID

            // データベースに挿入
            statement.executeUpdate();

        } catch (SQLException e) {
            throw new Exception("データベースエラーが発生しました：" + e.getMessage());
        } finally {
            // リソースの解放
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException sqle) {
                    throw sqle;
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException sqle) {
                    throw sqle;
                }
            }
        }
    }
}
