package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import form.DeleteForm;

public class DeleteDAO {

	public boolean updateDetails(DeleteForm deleteForm, HttpServletRequest request) {
		Connection conn = null;

		try {
			String hid = deleteForm.getHouseId().trim();
			String uid = deleteForm.getUserId().trim();

			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			Date date = new Date();
			System.out.println(dateFormat.format(date));
			String inactivedate = dateFormat.format(date);

			String edtby = getUid((String) request.getSession().getAttribute("adminid"));

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");

			if (hid != null && !("").equalsIgnoreCase(hid)) {
				String s2 = " UPDATE houses set enddate = sysdate , enddatedby = ? where houseid like '" + hid.trim() + "' ";
				PreparedStatement p2 = conn.prepareStatement(s2);

			//	p2.setString(1, inactivedate);
				p2.setString(1, edtby);

				p2.executeUpdate();

				return true;

			} else if (uid != null && (hid == null || ("").equalsIgnoreCase(hid))) {
				System.out.println("User Id Deletion");
				String s2 = " DELETE from users where userid like '" + uid.trim() + "' ";
				PreparedStatement p2 = conn.prepareStatement(s2);

				p2.executeUpdate();

				return true;

			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}

	public static String getUid(String userName) {
		Connection conn = null;
		String userId = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");

			String userIdQuery = "Select adminid as adminid from administrator where adminid = '" + userName + "' ";

			Statement st = conn.createStatement();
			ResultSet rsq = st.executeQuery(userIdQuery);

			while (rsq.next()) {
				userId = rsq.getString("adminid");
			}

		} catch (Exception exp) {
			exp.printStackTrace();
		}

		return userId;
	}
}
