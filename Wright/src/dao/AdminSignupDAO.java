package dao;





import java.util.Random;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import form.AdminSignupForm;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class AdminSignupDAO {

	public boolean insertadminDetails(AdminSignupForm adminsignupForm) {
		Connection conn = null;

		try {
			//String uname = adminsignupForm.getUserName().trim();
			String adminid = adminsignupForm.getadminid().trim();
			String adminname = adminsignupForm.getadminname().trim();
			String adminpassword = adminsignupForm.getadminpassword().trim();
			String adminemail = adminsignupForm.getadminemail().trim();
			String adminphone = adminsignupForm.getadminphone().trim();

			/*Random rand = new Random();
			int num = rand.nextInt(90000) + 10000;
			String uid = "U" + num;
			System.out.println("User id : " + uid);
*/
			
			Date date = new Date();
			SimpleDateFormat format = new SimpleDateFormat();
			System.out.println("***************");
			System.out.println(date);
			System.out.println("////////////////////");
			// String DateToStr = format.format(date);
			 //        System.out.println("Default pattern: " + DateToStr);

			//SimpleDateFormat format = new SimpleDateFormat();
			//String DateToStr = format.format(date);
		format = new SimpleDateFormat("YYYY-MM-DD");
		//String DateToStr = format.format(date);
			//System.out.println(DateToStr);
			String activedate = format.format(date);
			System.out.println(activedate);
			
			
			
			/*DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			Date date = new Date();
			System.out.println(dateFormat.format(date));
			String activedate = dateFormat.format(date);*/

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");

			String s1 = "SELECT adminid FROM administrator WHERE adminid = ?";
			String s2 = "INSERT INTO administrator VALUES (?,?,?,sysdate,?,?)";

			PreparedStatement p1 = conn.prepareStatement(s1);
			PreparedStatement p2 = conn.prepareStatement(s2);

			p1.setString(1, adminid);

			ResultSet rs = p1.executeQuery();
			if (rs.next()) {
				System.out.println("The ID " + adminid + " already exists");
				rs.close();
				return false;
			} else {

				p2.setString(1, adminid);
				p2.setString(2, adminpassword);
				p2.setString(3, adminname);
				p2.setString(4, adminemail);
				p2.setString(5, adminpassword);
				//p2.setString(6, email);
			//	p2.setString(7, phone);
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

