package form;

import org.apache.struts.action.ActionForm;

public class DeleteForm extends ActionForm {
	
	public String getHouseId() {
		return houseId;
	}
	public void setHouseId(String houseId) {
		this.houseId = houseId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	private String houseId;
	private String userId;

}
