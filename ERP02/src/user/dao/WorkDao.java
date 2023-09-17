package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import user.model.Work;

public class WorkDao {

	public Work selectById(Connection conn, String id) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement("select * from work where workNo = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			Work work = null;
			if(rs.next()) {
				work = new Work(
						rs.getInt("workNo"),
						rs.getInt("work"),
						rs.getInt("absncWork"),
						rs.getInt("late"),
						rs.getInt("annualLeave"),
						rs.getInt("nightShift"),
						rs.getInt("userCode"));
			}
			return work;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	

}
