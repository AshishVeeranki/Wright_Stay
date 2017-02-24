package dao;

import java.util.Random;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import form.SignupForm;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class SignupDAO {

	public boolean insertUserDetails(SignupForm signupForm) {
		Connection conn = null;

		try {
			String uname = signupForm.getUserName().trim();
			String fname = signupForm.getFirstName().trim();
			String lname = signupForm.getLastName().trim();
			String pwd = signupForm.getPassword().trim();
			String email = signupForm.geteMail().trim();
			String phone = signupForm.getPhone().trim();

			Random rand = new Random();
			int num = rand.nextInt(90000) + 10000;
			String uid = "U" + num;
			System.out.println("User id : " + uid);

			
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat();
			System.out.println("***************");
			System.out.println(date);
			System.out.println("////////////////////");
			format = new SimpleDateFormat("YYYY-MM-DD");
			String activedate = format.format(date);
			System.out.println(activedate);
			

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");

			String s1 = "SELECT username FROM users WHERE username = ?";
			String s2 = "INSERT INTO users VALUES (?,?,?,?,?,?,?,sysdate)";

			PreparedStatement p1 = conn.prepareStatement(s1);
			PreparedStatement p2 = conn.prepareStatement(s2);

			p1.setString(1, uname);

			ResultSet rs = p1.executeQuery();
			if (rs.next()) {
				System.out.println("The user " + uname + " already exists");
				rs.close();
				return false;
			} else {

				p2.setString(1, uid);
				p2.setString(2, uname);
				p2.setString(3, fname);
				p2.setString(4, lname);
				p2.setString(5, pwd);
				p2.setString(6, email);
				p2.setString(7, phone);
				//p2.setString(8, activedate);

				p2.executeUpdate();
				return true;
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}

}

