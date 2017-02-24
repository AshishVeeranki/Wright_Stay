package form;

import org.apache.struts.action.ActionForm;

public class FeedbackForm extends ActionForm{
	
	
	
	private String remarks;
	private String hid;
	
	public String gethid() {
		return hid;
	}
	public void sethid(String hid) {
		this.hid = hid;
	}
	
	public String getremarks() {
		return remarks;
	}
	public void setremarks(String remarks) {
		this.remarks = remarks;
	}
	
	


}
