package user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import user.model.User;

public class UserDao {

	public User selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from users where user_code = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			User user = null;
			if(rs.next()) {
				user = new User(
						rs.getInt("userCode"),
						rs.getString("userPw"),
						rs.getString("name"),
						rs.getString("mail"),
						rs.getString("rank"),
						rs.getString("tel"),
						rs.getString("empid"),
						rs.getInt("empBr"),
						rs.getInt("deptNo"));
			}
			return user;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void insert(Connection conn, User user) throws SQLException {
		try(PreparedStatement pstmt = conn.prepareStatement("INSERT INTO users values(?,?,?,?,?,?,?,?,?)")) {
			pstmt.setInt(1, user.getUserCode());
			pstmt.setString(2, user.getUserPw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getMail());
			pstmt.setString(5, user.getRank());
			pstmt.setString(6, user.getTel());
			pstmt.setString(7, user.getEmpid());
			pstmt.setInt(8, user.getEmpBr());
			pstmt.setInt(9, user.getDeptNo());
			
		}
	}
	
	public void update(Connection conn, User user) throws SQLException {
		try(PreparedStatement pstmt = conn.prepareStatement("UPDATE users set empid = ?, user_pw = ?, name = ?, mail = ?, tel = ?")) {
		pstmt.setString(1, user.getEmpid());
		pstmt.setString(2, user.getUserPw());
		pstmt.setString(3, user.getName());
		pstmt.setString(4, user.getMail());
		pstmt.setString(5, user.getTel());
		pstmt.executeUpdate();
		}
	}
	
	public Boolean login(String empid, String userPw) throws SQLException{
		boolean result = false;
		Connection conn;
		PreparedStatement pstmt;
		ResultSet rs;
		String sql = "SELECT * FROM users WHERE empid = ? AND user_pw = ?";
		
		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, empid);
			pstmt.setString(2, userPw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = true;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
}
