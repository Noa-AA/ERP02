package admin.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import admin.dao.AdminDao;
import admin.model.Admin;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class JoinService {
	private AdminDao adminDao = new AdminDao();

	public void join(JoinRequest joinReq) {
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			Admin admin = adminDao.selectById(conn, joinReq.getUser_code());

			if (admin != null) {
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}

			adminDao.insert(conn,
					new Admin(joinReq.getName(),
							 Integer.parseInt(Number()), 
							new Date(),  
							 Integer.parseInt(User_code())));

			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}

	private String Number() {
		// TODO Auto-generated method stub
		return null;
	}

	private String User_code() {
		// TODO Auto-generated method stub
		return null;
	}
}
