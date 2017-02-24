package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import form.AdminForm;

public class AdminDAO {

	public boolean validateAdmin(AdminForm adminForm) {
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");
			statement = conn.createStatement();
			rs = statement
					.executeQuery("select adminpassword from administrator where adminid= '" + adminForm.getadminid() + "' ");
			String pw = null;

			while (rs.next()) {
				pw = rs.getString(1);
			}

			if (pw != null && pw.equals(adminForm.getadminpassword())) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}

}
