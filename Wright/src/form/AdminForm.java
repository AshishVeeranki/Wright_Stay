package form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class AdminForm extends ActionForm {

	private String adminid;
	private String adminpassword;

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

	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.adminpassword = null;
	}

}
