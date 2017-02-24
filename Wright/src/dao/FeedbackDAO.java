package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import form.FeedbackForm;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class FeedbackDAO {

	public boolean insertfeedbackDetails(FeedbackForm feedbackForm, HttpServletRequest request) {
		Connection conn = null;

		try {
			String remarks = feedbackForm.getremarks();
			String hid = feedbackForm.gethid();
			String uid = getUid((String) request.getSession().getAttribute("usrID"));


			

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");

			String s2 = "INSERT INTO feedback VALUES (?,?,?)";

			PreparedStatement p2 = conn.prepareStatement(s2);

			p2.setString(1, uid);
			p2.setString(2, hid);
			p2.setString(3, remarks);
			/*
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
			
			*/

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
