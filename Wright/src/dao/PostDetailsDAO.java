package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import form.PostDetailsForm;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class PostDetailsDAO {

	public boolean insertPostDetails(PostDetailsForm postdetailsForm, HttpServletRequest request) {
		Connection conn = null;

		try {
			String cname = postdetailsForm.getcName();
			String address = postdetailsForm.getAddress();
			String miles = postdetailsForm.getMiles();
			String rent = postdetailsForm.getRent();
			String city = postdetailsForm.getCity();
			String state = postdetailsForm.getState();
			String zip = postdetailsForm.getZipCode();
			String vacancies = postdetailsForm.getVacancies();
			String remarks = postdetailsForm.getRemarks();
			String pname = postdetailsForm.getpName();

			Random rand = new Random();
			int num = rand.nextInt(90000) + 10000;
			String hid = "H" + num;
			System.out.println("House id is " + hid);

			System.out.println("Distance : " + miles);

			String uid = getUid((String) request.getSession().getAttribute("usrID"));

			/*DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			Date date = new Date();
			System.out.println(dateFormat.format(date));
			String posteddate = dateFormat.format(date);*/

			String enddate = null;
			String enddatedby = null;

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");

			String s2 = "INSERT INTO houses VALUES (?,?,?,?,?,?,?,?,?,?,?,?,sysdate,null,?)";

			PreparedStatement p2 = conn.prepareStatement(s2);

			p2.setString(1, hid);
			p2.setString(2, uid);
			p2.setString(3, cname);
			p2.setString(4, address);
			p2.setString(5, city);
			p2.setString(6, state);
			p2.setString(7, zip);
			p2.setString(8, rent);
			p2.setString(9, miles);
			p2.setString(10, vacancies);
			p2.setString(11, remarks);
			p2.setString(12, pname);
			//p2.setString(13, posteddate);
			//p2.setString(14, enddate);
			p2.setString(13, enddatedby);

			p2.executeUpdate();
			return true;

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

			String userIdQuery = "Select userid as userID from users where username = '" + userName + "' ";

			Statement st = conn.createStatement();
			ResultSet rsq = st.executeQuery(userIdQuery);

			while (rsq.next()) {
				userId = rsq.getString("userID");
			}

		} catch (Exception exp) {
			exp.printStackTrace();
		}

		return userId;
	}
}
