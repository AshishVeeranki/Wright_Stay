package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import form.LoginForm;

public class LoginDAO {

	public boolean validateUser(LoginForm loginForm) {
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");
			statement = conn.createStatement();
			rs = statement
					.executeQuery("select password from users where username= '" + loginForm.getUserName() + "' ");
			String pw = null;

			while (rs.next()) {
				pw = rs.getString(1);
			}

			if (pw != null && pw.equals(loginForm.getPassword())) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}

}
