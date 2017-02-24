package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import form.EditUserDetailsForm;

public class EditUserDetailsDAO {

	public boolean insertEditUserDetails(EditUserDetailsForm edituserdetailsForm) {
		Connection conn = null;

		try {

			String email = edituserdetailsForm.geteMail().trim();
			String phone = edituserdetailsForm.getPhone().trim();
			String npwd = edituserdetailsForm.getNpassword().trim();
			String uname = edituserdetailsForm.getUname().trim();
			String fname = edituserdetailsForm.getFname().trim();
			String lname = edituserdetailsForm.getLname().trim();

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");

			String s2 = " UPDATE users set username = ? , firstname = ? , lastname = ? , password = ? , email = ? , phone = ? where username like '"
					+ uname.trim() + "' ";

			PreparedStatement p2 = conn.prepareStatement(s2);

			p2.setString(1, uname);
			p2.setString(2, fname);
			p2.setString(3, lname);
			p2.setString(4, npwd);
			p2.setString(5, email);
			p2.setString(6, phone);

			p2.executeUpdate();
			return true;

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
