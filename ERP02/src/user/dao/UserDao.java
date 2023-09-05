package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import user.model.User;

public class UserDao {

	public User selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from users where userCode = ?");
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
		try(PreparedStatement pstmt = conn.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?)")) {
			pstmt.setInt(1, user.getUserCode());
			
		}
	}
	

}
