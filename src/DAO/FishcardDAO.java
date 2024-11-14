package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.FishCard;

public class FishcardDAO {
    private String baseSql = "SELECT t.SUBJECT_CD, s.NAME as SUBJECT_NAME, t.NO, t.POINT " +
                             "FROM TEST t JOIN SUBJECT s ON t.SUBJECT_CD = s.CD " +
                             "WHERE t.STUDENT_NO = ? AND t.SCHOOL_CD = ?";

    private Connection connection;

    public FishcardDAO(Connection connection) {
        this.connection = connection;
    }

    private List<FishCard> postFilter(ResultSet rs) throws SQLException {
        List<FishCard> tests = new ArrayList<>();
        while (rs.next()) {
        	FishCard test = new FishCard();
        }
        return tests;
    }

    public List<FishCard> filter(Student student) throws SQLException {
        List<FishCard> results = new ArrayList<>();
        try (PreparedStatement stmt = connection.prepareStatement(baseSql)) {
            stmt.setString(1, student.getNo());
            stmt.setString(2, student.getSchool().getCd());
            try (ResultSet rs = stmt.executeQuery()) {
                results = postFilter(rs);
            }
        }
        return results;
    }
}
