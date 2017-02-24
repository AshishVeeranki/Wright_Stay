package form;

import org.apache.struts.action.ActionForm;

public class AdminSignupForm extends ActionForm{
	
	private String adminid;
	private String adminname;
	private String adminpassword;
	private String adminemail;
	private String adminphone;
	
	
	
	public String getadminid() {
		return adminid;
	}
	public void setadminid(String adminid) {
		this.adminid = adminid;
	}
	public String getadminpassword() {
		return adminpassword;
	}
	public void setadminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	public String getadminemail() {
		return adminemail;
	}
	public void setadminemail(String adminemail) {
		this.adminemail = adminemail;
	}
	public String getadminphone() {
		return adminphone;
	}
	public void setadminphone(String adminphone) {
		this.adminphone = adminphone;
	}
	public String getadminname() {
		return adminname;
	}
	public void setadminname(String adminname) {
		this.adminname = adminname;
	}
	
	

}
