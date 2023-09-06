package user.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import user.dao.UserDao;
import user.model.User;

public class UserService {

	private UserDao userDao = new UserDao();

	public User login(String empid, String userPw) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			User user = userDao.selectById(conn, empid);
			if (user == null) {
				throw new RuntimeException();
			}

			if (!user.matchPassword(userPw)) {
				throw new RuntimeException();
			}

			return new User(user.getEmpid(), user.getUserPw());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
